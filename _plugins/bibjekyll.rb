# This plugin interfaces bibtex2html (http://www.lri.fr/~filliatr/bibtex2html/) with Jekyll
# to generate an html bibliography list from bibtex entries.
# For this to work, the bibtex entries must be enclosed in a special liquid tag:
# {% bibtex style.bst mybibliography.bib %}

module Jekyll
  # Workaround for commit 5b680f8dd80aac1 in jekyll (remove orphaned files in destination)
  # that deletes all the files created by plugins.
  class Site
    def cleanup
    end
  end

  class BibtexTag < Liquid::Tag
    # The options that are passed to bibtex2html
    Options = "-nofooter -noheader -use-table -nokeywords -nokeys -nodoc -dl"
    Options = "-nofooter -noheader -use-table -noabstract -nokeywords -nodoc -dl"

    def split_params(params)
      params.split(" ").map(&:strip)
    end

    def initialize(tag_name, params, tokens)
      super
      args = split_params(params)
      @style = args[0]
      @bibfile = args[1]
      p "Processing: " + @bibfile 
    end

    def render(context)

      # get the complete paths for the style file and the source file
      stylepath = File.join(context['site']['source'], @style)

      sourcefile = File.join(context['site']['source'], context['page']['url'])
      bib = File.join(File.dirname(sourcefile), @bibfile)

      outputfile = File.join(context['site']['destination'], context['page']['url'])
      outputdir = File.dirname(outputfile)

      # ensure that the destination directory exists
      FileUtils.mkdir_p(outputdir)

      # enter the destination directory
      Dir.chdir(outputdir) do
          basename = File.basename(bib).split('.')[-2]
          # file generated by bibtex2html that shall be included into
          # the generated page
          outname = basename + ".html"
          # file containing bib entries (also generated by bibtex2html)
          bibhtml = basename + "_bib.html"

          # call bibtex2html
          cmd = "export TMPDIR=.; bibtex2html #{Options} -s #{stylepath} -o #{basename} #{bib}"
          puts cmd
          system(cmd)

          if $? != 0
              msg = "bibjekyll error: bibtex2html invocation failed"
              $stderr.puts(msg)
              return msg
          end

          # Fix back links in the html formatted bib file
          # generated by bibtex2html
          if File.exists?(bibhtml)
              # Read html formatted bib file
              content_bibhtml = IO.read(bibhtml)
              # determine the name of the file we are generating
              page = File.basename(outputfile)
              # replace links to basename by page
              content_bibhtml = content_bibhtml.gsub(outname, page)
              # commit changes
              File.open(bibhtml, 'w') {|f| f.write(content_bibhtml)}
          end

          # return the produced output
          IO.read(outname)
      end
    end
  end
end
Liquid::Template.register_tag('bibtex', Jekyll::BibtexTag)

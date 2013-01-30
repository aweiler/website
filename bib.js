//<![CDATA[
$(document).ready(function(){
  // If there is a bibliography, convert all \cite{} texts to links to citations.
  references = {}; $('.references dt a').each(function(index,val) {
    references[val.name] = val.text;
  });

  if ($.isEmptyObject(references)) {
    return;
  }
  
  refs_to_links = function(refs) {
    return "["+$.map(refs.split(','), function(val) {
      return "<a href='#"+val+"'>"+references[val]+"</a>"
    })+"]";
  }

  var content = $('#page-content');
  content.html(content.html().replace(
    /\\cite{(.+?)}/g, function(a,b) {
      return refs_to_links(b);
    })
  );
});
//]]>

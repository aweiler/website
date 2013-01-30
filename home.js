//<![CDATA[
  $(document).ready(function(){
    // Hide the course projects list, wrap the title in a link, and make the link
    // toggle showing the list.
    cpdiv = $(".course_projects div");
    cpdiv.hide();
    $("#course_projects_header").wrapInner("<a class=\"course_projects\" />");
    cpa = $('#course_projects_header a');
    cpa.toggle(function(){
      cpdiv.show('fast');
      cpa.find("span").replaceWith("<span>Course Projects &uarr;</span>")
      //cpa.find("span").unwrap(); // if we don't want toggle
    }, function(){
        cpdiv.hide('fast');
        cpa.find("span").replaceWith("<span>Course Projects &darr;</span>")
      });
  });
//]]>
// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    $('.ajaxable').live('click', function (e) {
        $('div.info_div').html('');
        $.getScript(this.href);
        e.preventDefault();
    });

    $('a.colour_changer').click(function(e) {
        var href = $('#colour_css_tag').attr('href');
        href = href.replace(/[^\/]*css/, $(this).data('colour') + ".css");
        $('#colour_css_tag').attr('href', href);
        e.preventDefault();
    });

    $('#loading').hide().ajaxStart(function() {
//        offset = $('#main').offset();

  //      $(this).offset(offset);
    //    $(this).width($('#main').width());
      //  $(this).height($(window).height());
        $(this).show();
    }).ajaxStop(function() {
        $(this).hide();
    });

//    $(window).bind("popstate", function () {
//        $.getScript(location.href);
//    });
});


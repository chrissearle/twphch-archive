// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    $('#menu ul a').live('click', function (e) {
        $.getScript(this.href);
//        history.pushState(null, "", this.href);
        e.preventDefault();
    });

    $('a.colour_changer').click(function(e) {
        var href = $('#colour_css_tag').attr('href');
        href = href.replace(/[^\/]*css/, $(this).data('colour') + ".css");
        $('#colour_css_tag').attr('href', href);
        e.preventDefault();
    });

    $('a.round_tag_link').live('click', function(e) {
        $.getScript(this.href);
        e.preventDefault();
    });

//    $(window).bind("popstate", function () {
//        $.getScript(location.href);
//    });
});


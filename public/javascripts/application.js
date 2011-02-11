// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    $('a.colour_changer').click(function(e) {
        var href = $('#colour_css_tag').attr('href');
        href = href.replace(/[^\/]*css/, $(this).data('colour') + ".css");
        $('#colour_css_tag').attr('href', href);
        e.preventDefault();
    });

    if (!!window.history && !!window.history.pushState) {
        $('.ajaxable').live('click', function (e) {
            history.pushState(null, "", this.href);
            $('div.info_div').html('');
            $.getScript(this.href);
            e.preventDefault();
        });

        $('#loading').hide().ajaxStart(
                                      function() {
                                          $(this).show();
                                      }).ajaxStop(function() {
            $(this).hide();
        });

        $(window).bind("popstate", function () {
            $.getScript(location.href);
        });
    }
});


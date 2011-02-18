// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    $('a.colour_changer').click(function(e) {
        var href = $('#colour_css_tag').attr('href');
        href = href.replace(/[^\/]*css/, $(this).data('colour') + ".css");
        $('#colour_css_tag').attr('href', href);

        $.get('/colour?colour=' + $(this).data('colour'));
        
        e.preventDefault();
    });
});

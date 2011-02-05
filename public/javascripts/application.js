// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    $('#menu ul a').live('click', function (e) {
        $.getScript(this.href);
        e.preventDefault();
    });
});


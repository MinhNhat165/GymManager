$(function() {
	"use strict";
	var url = window.location + "";
	var path = url.replace(
		window.location.protocol + "//" + window.location.host + "/",
		""
	);
	var element = $(".nav-link").filter(function() {
		return this.href === url || this.href === path; // || url.href.indexOf(this.href) === 0;
	});

	element.removeClass("collapsed");
});

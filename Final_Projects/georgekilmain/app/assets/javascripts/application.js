// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui.min
//= require_tree .
$(document).ready(function() {

	$("#advertiser_business_name").keyup(function() {
    	$(".advertiser_business_name").html($(this).val())
	})

	$("#advertiser_advertisement").keyup(function() {
    	$(".advertiser_advertisement").html($(this).val())
	})

	$("#advertiser_url").keyup(function() {
    	$(".advertiser_url").html($(this).val())
	})

	$(".data").hide();
	$("#league_filter .data").show();
	$(".filter_title").on("click", function() {	
		$(this).next("div").toggle(200);
	});

})
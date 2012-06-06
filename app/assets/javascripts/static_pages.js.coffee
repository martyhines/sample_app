# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

`$(function(){
	$.ajax({
	    url: "users.json",
	    cache: false
	}).done(function( msg ) {
	    for (var i = 0; i < msg.length; i += 1)
	    console.log( msg[i].name + " -------- " + msg[i].email);
	});
})`
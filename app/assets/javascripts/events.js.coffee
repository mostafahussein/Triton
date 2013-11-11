# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("[data-validate]").blur ->
    $this = $(this)
    $.get($this.data("validate"),event_name: $this.val()).success(->
	    $this.removeClass "field_with_errors").error ->
		  $this.addClass "field_with_errors"
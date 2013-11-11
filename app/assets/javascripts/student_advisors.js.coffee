# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#student_advisor_student_class_id').parent().hide()
  section = $('#student_advisor_student_class_id').html()
  $('#student_advisor_batch_id').change ->
    batch = $('#student_advisor_batch_id :selected').text()
    escaped_batch = batch.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(section).filter("optgroup[label='#{escaped_batch}']").html()
    if options
      $('#student_advisor_student_class_id').html(options)
      $('#student_advisor_student_class_id').parent().show()
    else
      $('#student_advisor_student_class_id').empty()
      $('#student_advisor_student_class_id').parent().hide()

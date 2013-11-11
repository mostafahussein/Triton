# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#leadership_supervisor_employee_position_id').parent().hide()
  position = $('#leadership_supervisor_employee_position_id').html()
  $('#leadership_supervisor_employee_department_id').change ->
    department = $('#leadership_supervisor_employee_department_id :selected').text()
    escaped_department = department.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(position).filter("optgroup[label='#{escaped_department}']").html()
    if options
      $('#leadership_supervisor_employee_position_id').html(options)
      $('#leadership_supervisor_employee_position_id').parent().show()
    else
      $('#leadership_supervisor_employee_position_id').empty()
      $('#leadership_supervisor_employee_position_id').parent().hide()
jQuery ->
  $('#leadership_supervisor_employee_id').parent().hide()
  employee = $('#leadership_supervisor_employee_id').html()
  $('#leadership_supervisor_employee_position_id').change ->
    position = $('#leadership_supervisor_employee_position_id :selected').text()
    escaped_position = position.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(employee).filter("optgroup[label='#{escaped_position}']").html()
    if options
      $('#leadership_supervisor_employee_id').html(options)
      $('#leadership_supervisor_employee_id').parent().show()
    else
      $('#leadership_supervisor_employee_id').empty()
      $('#leadership_supervisor_employee_id').parent().hide()

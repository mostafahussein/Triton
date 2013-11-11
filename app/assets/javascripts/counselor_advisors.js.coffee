# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#counselor_advisor_employee_position_id').parent().hide()
  position = $('#counselor_advisor_employee_position_id').html()
  $('#counselor_advisor_employee_department_id').change ->
    department = $('#counselor_advisor_employee_department_id :selected').text()
    escaped_department = department.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(position).filter("optgroup[label='#{escaped_department}']").html()
    if options
      $('#counselor_advisor_employee_position_id').html(options)
      $('#counselor_advisor_employee_position_id').parent().show()
    else
      $('#counselor_advisor_employee_position_id').empty()
      $('#counselor_advisor_employee_position_id').parent().hide()
jQuery ->
  $('#counselor_advisor_employee_id').parent().hide()
  employee = $('#counselor_advisor_employee_id').html()
  $('#counselor_advisor_employee_position_id').change ->
    position = $('#counselor_advisor_employee_position_id :selected').text()
    escaped_position = position.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(employee).filter("optgroup[label='#{escaped_position}']").html()
    if options
      $('#counselor_advisor_employee_id').html(options)
      $('#counselor_advisor_employee_id').parent().show()
    else
      $('#counselor_advisor_employee_id').empty()
      $('#counselor_advisor_employee_id').parent().hide()


# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#guidance_supervisor_employee_id').parent().hide()
  employee = $('#guidance_supervisor_employee_id').html()
  $('#guidance_supervisor_employee_department_id').change ->
    department = $('#guidance_supervisor_employee_department_id :selected').text()
    escaped_department = department.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(employee).filter("optgroup[label='#{escaped_department}']").html()
    if options
      $('#guidance_supervisor_employee_id').html(options)
      $('#guidance_supervisor_employee_id').parent().show()
    else
      $('#guidance_supervisor_employee_id').empty()
      $('#guidance_supervisor_employee_id').parent().hide()
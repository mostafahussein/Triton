$('#menu ul.group li a.main').on("click",function() {
  var href = $(this).attr('href');
  $('#content_area').hide();
  $('#content_area').load(href);
  $('#content_area').fadeIn(500);
  return false;
});
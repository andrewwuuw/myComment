# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".master_title").fadeIn 1000
  $(".slave_title").fadeIn 2000
  $(".book_button").fadeIn 3000

  $(".go_comment_button").click ->
    $('html, body').animate {scrollTop: $('.comment_block').offset().top}, 500

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $.fn.blink = function(){

jQuery ->
  $('.well>ol>li:first-child')
    .addClass('alert alert-success')
    .append('<span class="badge success"> Winner </span>')

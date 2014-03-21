# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).load ->
  $("#slider").nivoSlider()
  return


$(document).ready ->
  $(".slider1").bxSlider
    slideWidth: 170
    minSlides: 2
    maxSlides: 6
    slideMargin: 20

  return




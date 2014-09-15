# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(function(){
    $(".score_table").keyup(function() {
      var textValue = $(this).val();
      if(textValue === "Actual"){
        // add css class or any manipulation to your dom.
        $('#test_type').css('background-color','green');
      }
    });
});
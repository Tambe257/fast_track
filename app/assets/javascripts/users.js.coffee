# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
        $('#sessions').dataTable({
          "aLengthMenu": [
            [5, 10, -1],
            [5, 10, "All"]
          ]
        });

        $('#tests').dataTable({
          "aLengthMenu": [
            [5, 10, -1],
            [5, 10, "All"]
          ]
        });


$(document).ready(function() {
  $("#level").change(function(){
  	var level = $(this).val();
            // alert(state);
    $.ajax({
    	datatype: "text",
        url: "/get_students",
        type: "GET",
        data: {state: level},


    });        
});
});



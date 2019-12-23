$(document).ready(function() {
	$("#mark_level_id").change(function(){
		var level = $(this).val();
  			
            // alert(level);
    	$.ajax({
    		datatype: "text",
       	url: "/get_names",
        textype: "GET",
        data: {state: level},

      });
    	        
	});
});

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

  $(document).ready(function() {
	$( "#position-profile" ).draggable({
		cursor: 'move',
		containment: "parent",
		scroll: false, 
		// Capture the "stop drag" event.
		stop:function(event, ui) {
			// Generate the profile object with the updated position coordinates.
			var profile = {
				"id": $(this).attr('value'),
				"position_y": $(this).position().top.toString(),
				"position_x": $(this).position().left.toString()
			};
			
			// Send the request to the server.
			$.ajax({
				type: "PUT",
				url: "/users/" + $(this).attr('value') + "#position-profile" + ".json",
				data: JSON.stringify( profile ),
				contentType: 'application/JSON',
				dataType: 'json',
				
				// Create a success message to let users know new positions have saved
				//success: function(msg){
				//         alert( "Data Saved:");
				//}
				// In case that an error happens, capture it and show the details.
				error: function(xhr, msg, error) {
					alert(msg + ": " + error);
				}
			})
		}
	});
  });


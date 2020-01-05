function cf7Calculate($form) {
	// Retrieve form ID
	var form_id   = null;
	var $form_div = $form.closest( 'div.wpcf7' );
	if ($form_div.length == 0) {
		return;
	}
	var form_div_id = $form_div.attr( 'id' );
	var matches     = form_div_id.match( /wpcf7-f([0-9]+)/ );
	if (matches !== null) {
		form_id = matches[1];
	}
	if (form_id === null) {
		return;
	}

	var $button = $form_div.find( '.cf7-calculate_button' );

	// Retrieve form values
	$form = $button.closest( 'form' );
	if ($form.length == 0) {
		return;
	}
	var postdata = $form.serializeArray();

	// Add form ID to posted data
	postdata.push( {name: 'action', value: 'pvb_calculate'} );
	postdata.push( {name: 'pvb_form_id', value: form_id} );

	// Send data to server
	jQuery.post(
		frontend_ajax_object.ajaxurl,
		postdata,
		function(r) {
			// Fill fields with results
			if (r instanceof Object) {
				for (var name in r) {
					$form.find( 'input[name=' + name + ']' ).val( r[name] );
				}
			}
			// Enable button again
			if ($button) {
				$button.prop( 'disabled', false );
			}
			$form.trigger( 'wpcf7calculate' );
		}
	).fail(
		function() {
				// Enable button again
				$button.prop( 'disabled', false );
				$form.trigger( 'wpcf7calculatefail' );
		}
	);
}

// Attach to Calculate buttons
jQuery( '.cf7-calculate_button' ).click(
	function(event) {
		// Disable button
		var $button = jQuery( event.target );
		if ($button.length == 0) {
			return;
		}
		$button.prop( 'disabled', true );
		cf7Calculate( $button.closest( 'form' ) );
	}
);

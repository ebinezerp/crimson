$(document).ready(function() {
	var url = window.location.href;
	var id = url.substring(url.lastIndexOf('/') + 1);
	console.log(id);
	$.get('/user/checkcartitem/' + id, function(data, error) {
		if (data != "") {
			$('#addtocartbtn').hide();
			$('#prod_quantity').val(data.quantity);
		} else {
			$('#prod_quantity').val(1);
		}
	});

	$('#add').click(function() {
		if ($('#addtocartbtn').is(':hidden')) {
			$('#updatecartbtn').show();
		}
	})
	$('#sub').click(function() {
		if ($('#addtocartbtn').is(':hidden')) {
			$('#updatecartbtn').show();
		}
	})

	$('#updatecartbtn').click(function() {
		var quantity = $('#prod_quantity').val();
		var url = '/user/udpate_cartitem/' + id;
		$.get(url + '/' + quantity, function(data, error) {
			$('#update-alert').show();
			$('#updatecartbtn').hide();
			$('#cart_count').html(data);

		})
	});
})

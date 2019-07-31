$(document).ready(function() {
	var url = window.location.href;
	var id = url.substring(url.lastIndexOf('/') + 1);
	console.log(id);
	$.get('/user/checkcartitem/' + id, function(data, error) {
		console.log(data);
		if (data != "") {
			console.log("if hello");
			$('#addtocartbtn').hide();
			$('#prodexits').show();
			$('#prod_quantity').val(data.quantity);
		} else {
			console.log("else hello");
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
			if (quantity > 0) {
				$('#update-alert').show();
				$('#updatecartbtn').hide();
			}else{
				$('#addtocartbtn').show();
				$('#prodexits').hide();
			}
			$('#cart_count').html(data);

		})
	});
})

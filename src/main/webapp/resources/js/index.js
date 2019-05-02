//open sub-category
$('.menu .sub-menu ul').hide();
$('.menu .sub-menu ul.open').show();
$(".menu .sub-menu a").click(function () {
  $(this).parent(".sub-menu").children("ul").slideToggle("300");
});

$('.quick-modal .sub-menu ul').hide();
$(".quick-modal .sub-menu a").click(function () {
  $(this).parent(".sub-menu").children("ul").slideToggle("300");
  $(this).find("i.fa").toggleClass("flaticon-3-signs flaticon-4-minus");
}); 

//page-load-modal
 $(window).load(function(){        
   $('#pageloadmodal').modal('show');
    }); 
	
//light gallery	
$(document).ready(function() {
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:5,
                slideMargin: 0,
                speed:500,
                auto:false,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
				
            });
		});

/*//quantity
var unit = document.getElementById('prod_quantity').value;
var total;*/
// if user changes value in field
/*$('.field').change(function() {
  unit = this.value;
});*/
$('.add').click(function() {
$('#prod_quantity').val(parseInt($('#prod_quantity').val())+1)
 /* var $input = $(this).prevUntil('.sub');
  $input.val(unit);
  unit = unit;*/
});
$('.sub').click(function() {
	var unit=$('#prod_quantity').val();
  if (unit > 0) {
    unit--;
    /*var $input = $(this).nextUntil('.add');
    $input.val(unit);*/
    $('#prod_quantity').val(unit);
  }
});
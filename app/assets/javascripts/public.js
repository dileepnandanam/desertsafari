$(document).on('turbolinks:load', function() {

	$('.map-link').on('click', function() {
		if( (navigator.platform.indexOf("iPhone") != -1) 
        || (navigator.platform.indexOf("iPod") != -1)
        || (navigator.platform.indexOf("iPad") != -1))
         	window.open("maps://maps.google.com/maps?daddr="+ $(this).data('addr') +"&amp;ll=");
        else
        	window.open("http://maps.google.com/maps?daddr="+ $(this).data('addr') +"&amp;ll=");
	})
})
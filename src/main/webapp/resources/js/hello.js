// Tabbed Menu
	function openMenu(evt, menuName) {
	  var i, x, tablinks;
	  x = document.getElementsByClassName("menu");
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < x.length; i++) {
	     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
	  }
	  document.getElementById(menuName).style.display = "block";
	  evt.currentTarget.firstElementChild.className += " w3-red";
	}
	

$(document).ready(function() {
		
	$('.minus').click(function () {
		var $input = $(this).parent().find('input');
		var count = parseInt($input.val()) - 1;
		count = count < 0 ? 0 : count;
		var foodName = $(this).parent().parent().parent().find('.food-name').html();
		updateCart(foodName, count);
		$input.val(count);
		$input.change();
		return false;
	});
	$('.plus').click(function () {
		var $input = $(this).parent().find('input');
		var count = parseInt($input.val()) + 1;
		count = count > 5 ? 5 : count;
		var foodName = $(this).parent().parent().parent().find('.food-name').html();
		updateCart(foodName, count);
		$input.val(count);
		$input.change();
		return false;
	});
	
	function updateCart(foodName, count)
	{
		
	}
});
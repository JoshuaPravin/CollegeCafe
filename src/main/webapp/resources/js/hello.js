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
		var foodPrice = parseInt($(this).parent().parent().parent().find('.foodPrice').html().replace("Rs.", ""));
		var foodCost = count * foodPrice;
		
		updateCart(foodName, foodPrice, count, foodCost);
		$input.val(count);
		$input.change();
		return false;
	});
	$('.plus').click(function () {
		var $input = $(this).parent().find('input');
		var count = parseInt($input.val()) + 1;
		count = count > 5 ? 5 : count;
		var foodName = $(this).parent().parent().parent().find('.food-name').html();
		var foodPrice = parseInt($(this).parent().parent().parent().find('.foodPrice').html().replace("Rs.", ""));
		var foodCost = count * foodPrice;
		
		updateCart(foodName, foodPrice, count, foodCost);
		$input.val(count);
		$input.change();
		return false;
	});
	
	function updateCart(foodName, foodPrice, count, foodCost)
	{
		//alert(foodName+" - "+foodPrice+" - "+count+" - "+foodCost);
		var isFoodAlreadyInCart = false;
		//remove existing row
		removeExistingItemInCart(foodName);
		//create new row at index 0
		if(count>0)
		{
			var newRow = '<tr><td>'+foodName+'</td><td>Rs. '+foodPrice+'</td><td>'+count+'</td><td class="cartFoodCost">Rs. '+foodCost+'</td></tr>';
			insertNewItemInCart(newRow);
		}
		//Update total
		updateTotal();
	}
	
	function insertNewItemInCart(newRow)
	{
		var existingRows = $('table > tbody').eq(0).before(newRow);
	}
	
	function removeExistingItemInCart(foodName)
	{
		var input, filter, table, tbody, tr, td, i, txtValue;
		filter = foodName.toUpperCase();
		table = document.getElementById("cartTable");
		tr = table.getElementsByTagName("tr");
		// Loop through all table rows, and hide those who don't match the search query
		for (i = 1; i < tr.length; i++) 
		{
		    td = tr[i].getElementsByTagName("td")[0];
		    if (td.innerHTML == foodName) 
		    {
		      tr[i].remove();
		    }
		}
	}
	
	function updateTotal()
	{
		var tr, td, i;
		var total = 0;
		tr = document.getElementsByClassName("cartFoodCost");
		for (i = 0; i < tr.length; i++) 
		{
		    td = parseInt(tr[i].innerHTML.replace("Rs. ",""));
		    total = total + td;
		}
		document.getElementById('cartTotal').innerHTML = "Rs. "+total;
	}
});
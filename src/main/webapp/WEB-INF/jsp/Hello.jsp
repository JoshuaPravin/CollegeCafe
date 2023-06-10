<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script><%@include file="/resources/js/hello.js" %></script>
<style><%@include file="/resources/css/hello.css" %></style>
<title>College Cafe</title>

<body>
	<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="#" class="w3-bar-item w3-button">HOME</a>
    <a href="#menu" class="w3-bar-item w3-button">MENU</a>
    <a href="#cart" class="w3-bar-item w3-button">CART</a>
    <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
    <a href="#myMap" class="w3-bar-item w3-button">CONTACT</a>
  </div>
</div>
  
<!-- Header with image -->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-bottomleft w3-padding">
    <span class="w3-tag w3-xlarge">Open from 9am to 4:45pm</span>
  </div>
  <div class="w3-display-middle w3-center">
    <span class="w3-text-black w3-hide-small" style="font-size:100px">College Cafe<br>Delicious Food!!</span>
    <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"><b>thin<br>CRUST PIZZA</b></span>
    <p><a href="#menu" class="w3-button w3-xxlarge w3-black">Let me see the menu</a></p>
  </div>
</header>

<!-- Menu Container -->
<div class="w3-container w3-black w3-padding-64 w3-xxlarge" id="menu">
  <div class="w3-content">
  
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">THE MENU</h1>
    <div class="w3-row w3-center w3-border w3-border-dark-grey">
      <a href="javascript:void(0)" onclick="openMenu(event, 'Breakfast');" id="myLink">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Breakfast</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Lunch');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Lunch</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Snacks');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Snacks and Beverages</div>
      </a>
    </div>

    <div id="Breakfast" class="w3-container menu w3-padding-32 w3-white">
      <c:forEach items="${breakfastList}" var="food">
         <h1>
	      <b class="food-name">${food.name}</b> 
	      <span class="w3-right w3-tag w3-dark-grey w3-round food-quanity-toggle">
		  <span class="number">
			<span class="minus">-</span>
			<input class="food-quantity" type="text" value="0"/>
			<span class="plus">+</span>
		  </span>
		  </span>
	      <span class="w3-right w3-tag w3-dark-grey w3-round foodPrice">Rs.${food.price}</span>
	      </h1>
	      <p class="w3-text-grey">${food.description}</p>
	      <hr>
      </c:forEach>
    </div>

    <div id="Lunch" class="w3-container menu w3-padding-32 w3-white">
      <c:forEach items="${lunchList}" var="food">
         <h1>
	      <b class="food-name">${food.name}</b> 
	      <span class="w3-right w3-tag w3-dark-grey w3-round food-quanity-toggle">
		  <span class="number">
			<span class="minus">-</span>
			<input class="food-quantity" type="text" value="0"/>
			<span class="plus">+</span>
		  </span>
		  </span>
	      <span class="w3-right w3-tag w3-dark-grey w3-round foodPrice">Rs.${food.price}</span>
	      </h1>
	      <p class="w3-text-grey">${food.description}</p>
	      <hr>
      </c:forEach>
    </div>


    <div id="Snacks" class="w3-container menu w3-padding-32 w3-white">
      <c:forEach items="${snacksList}" var="food">
         <h1>
	      <b class="food-name">${food.name}</b> 
	      <span class="w3-right w3-tag w3-dark-grey w3-round food-quanity-toggle">
		  <span class="number">
			<span class="minus">-</span>
			<input class="food-quantity" type="text" value="0"/>
			<span class="plus">+</span>
		  </span>
		  </span>
	      <span class="w3-right w3-tag w3-dark-grey w3-round foodPrice">Rs.${food.price}</span>
	      </h1>
	      <p class="w3-text-grey">${food.description}</p>
	      <hr>
      </c:forEach>
    </div><br>

  </div>
</div>

<!-- Cart Container -->
<div class="w3-container w3-padding-64 w3-grey w3-grayscale w3-xlarge" id="cart">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">Cart</h1>
	<table id="cartTable" class="table align-middle table-nowrap table-centered mb-0">
    <thead>
    	<tr>
            <th>Item</th>
            <th>Price</th>
            <th>Quantity</th>
            <th class="text-end" style="width: 120px;">Total</th>
        </tr>
    </thead>
    <tbody id="cartTableBody">
    	<tr><td></td><td></td><th>Total:</th><td id="cartTotal"></td></tr>
	</tbody>
    </table>
  </div>
</div>


<!-- About Container -->
<div class="w3-container w3-padding-64 w3-white w3-grayscale w3-xlarge" id="about">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">About</h1>
    <p><b>College Cafe is a cafeteria website that is developed for the staff and students who belong to the [college name] College. This website enables the students/staff to view the menu, order food online and through phone calls.</b></p>
    
    <img src="https://www.gre.ac.uk/__data/assets/image/0025/119653/gre.jpg" style="width:100%" class="w3-margin-top w3-margin-bottom" alt="Restaurant">
    <h1><b>Opening Hours</b></h1>
    
    <div class="w3-row">
      <div class="w3-col s6">
        <p><b>Monday 9.00AM - 4.45PM</b></p>
        <p><b>Tuesday 9.00AM - 4.45PM</b></p>
        <p><b>Wednesday 9.00AM - 4.45PM</b></p>
      </div>
      <div class="w3-col s6">
        <p><b>Thursday 9.00AM - 4.45PM</b></p>
        <p><b>Friday 9.00AM - 4.45PM</b></p>
        <p><b>Saturday and Sunday Closed</b></p>
      </div>
    </div>
    
  </div>
</div>


<!-- Contact -->
<div class="w3-container w3-padding-64 w3-blue-grey w3-grayscale-min w3-xlarge">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">Contact</h1>
    <p>Find us between Mechanical Laboratory and Electrical Laboratory</p>
    <p><span class="w3-tag">FYI!</span> We offer clean and hygienic food. Our kitchens and dining spaces are cleaned and inspected for insects everyday.</p>
    <p class="w3-xxlarge"><strong>Reserve</strong> a table, ask for today's special or just send us a message:</p>
    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="number" placeholder="How many people" required name="People"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="datetime-local" placeholder="Date and time" required name="date" value="2020-11-16T20:00"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message \ Special requirements" required name="Message"></p>
      <p><button class="w3-button w3-light-grey w3-block" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
  <p>Copyright by <a href="#" target="_blank">[College Name]</a></p>
</footer>
	
</body>
</html>

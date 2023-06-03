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
<script><%@include file="/resources/js/hello.js" %></script>
<style><%@include file="/resources/css/hello.css" %></style>  
<title>Sara Cafe</title>

<body>
	<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="#" class="w3-bar-item w3-button">HOME</a>
    <a href="#menu" class="w3-bar-item w3-button">MENU</a>
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
    <span class="w3-text-white w3-hide-small" style="font-size:100px">Sara Cafe<br>Innaikku oru pudi!!</span>
    <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"><b>thin<br>CRUST PIZZA</b></span>
    <p><a href="#menu" class="w3-button w3-xxlarge w3-black">Let me see the menu</a></p>
  </div>
</header>

<!-- Menu Container -->
<div class="w3-container w3-black w3-padding-64 w3-xxlarge" id="menu">
  <div class="w3-content">
  
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">THE MENU</h1>
    <div class="w3-row w3-center w3-border w3-border-dark-grey">
      <a href="javascript:void(0)" onclick="openMenu(event, 'Tiffen');" id="myLink">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Tiffen</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Rice');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Rice</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Snacks');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Snacks and Beverages</div>
      </a>
    </div>

    <div id="Tiffen" class="w3-container menu w3-padding-32 w3-white">
      <h1><b>Ghee Roast</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.40</span></h1>
      <p class="w3-text-grey">Thin and crispy dosa roasted in ghee for added flavour</p>
      <hr>
   
      <h1><b>Idly</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.50</span></h1>
      <p class="w3-text-grey">Perfect Breakfast</p>
      <hr>
      
      <h1><b>Pongal</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.30</span></h1>
      <p class="w3-text-grey">Eat well but don't sleep in class!</p>
      <hr>

      <h1><b>Idiyappam</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.30</span></h1>
      <p class="w3-text-grey">White Noodles</p>
      <hr>

      <h1><b>Upma</b> <span class="w3-tag w3-red w3-round">Hot!</span><span class="w3-right w3-tag w3-dark-grey w3-round">Rs.30</span></h1>
      <p class="w3-text-grey">Upma Always ready Ma!</p>
      <hr>

      <h1><b>Uthappam</b> <span class="w3-tag w3-grey w3-round">New</span><span class="w3-right w3-tag w3-dark-grey w3-round">Rs.40</span></h1>
      <p class="w3-text-grey">Looks like Dosa,but is not.</p>
    </div>

    <div id="Rice" class="w3-container menu w3-padding-32 w3-white">
      <h1><b>Lemon Rice</b> <span class="w3-tag w3-grey w3-round">Popular</span> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.30</span></h1>
      <p class="w3-text-grey">Yellow Rice</p>
      <hr>
   
      <h1><b>Curd Rice</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.25</span></h1>
      <p class="w3-text-grey">White Colored Rice</p>
      <hr>
      
      <h1><b>Sambar Rice</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.45</span></h1>
      <p class="w3-text-grey">Yellow colored rice filled with vegetables</p>
      <hr>

      <h1><b>Dhal Rice</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.40</span></h1>
      <p class="w3-text-grey">Yellow Colored Rice with Lentils</p>
    </div>


    <div id="Snacks" class="w3-container menu w3-padding-32 w3-white">
      <h1><b>Puffs</b> <span class="w3-tag w3-grey w3-round">Seasonal</span><span class="w3-right w3-tag w3-dark-grey w3-round">Rs.15</span></h1>
      <p class="w3-text-grey">Ask the waiter for extra ketchup</p>
      <hr>
   
      <h1><b>ROLL</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.15</span></h1>
      <p class="w3-text-grey">Filled with sauce and vegetables</p>
      <hr>
      
      <h1><b>Potato Chips</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.5</span></h1>
      <p class="w3-text-grey">Perfect Combo for Lemon Rice</p>
      <hr>
      
      <h1><b>Little Hearts</b> <span class="w3-right w3-tag w3-dark-grey w3-round">Rs.10</span></h1>
      <p class="w3-text-grey">Holds the heart I have</p>
    </div><br>

  </div>
</div>

<!-- About Container -->
<div class="w3-container w3-padding-64 w3-red w3-grayscale w3-xlarge" id="about">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">About</h1>
    <p>Sara Cafe is a cafeteria that is developed for the staff and children who belong to Saranathan College Of Engineering. This website enables the students/staff to view the menu,order food online and through phone calls.</p>
    
    <img src="data:image/jpeg;base64,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" style="width:100%" class="w3-margin-top w3-margin-bottom" alt="Restaurant">
    <h1><b>Opening Hours</b></h1>
    
    <div class="w3-row">
      <div class="w3-col s6">
        <p>Monday 9.00AM - 4.45PM</p>
        <p>Tuesday 9.00AM - 4.45PM </p>
        <p>Wednesday 9.00AM - 4.45PM</p>
      </div>
      <div class="w3-col s6">
        <p>Thursday 9.00AM - 4.45PM</p>
        <p>Friday 9.00AM - 4.45PM</p>
        <p>Saturday and Sunday Closed</p>
      </div>
    </div>
    
  </div>
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale" style="width:100%;" id="myMap">

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
  <p>Copyright by <a href="https://saranathan.ac.in/" target="_blank">Saranathan College Of Engineering</a></p>
</footer>
	
</body>
</html>

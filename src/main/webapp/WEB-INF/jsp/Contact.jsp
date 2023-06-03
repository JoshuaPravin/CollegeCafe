<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Foodozer - Contact</title>
<script><%@include file="/resources/js/hello.js" %></script>
<style><%@include file="/resources/css/hello.css" %></style>  
<link 
      href="https://fonts.googleapis.com/css2?
      family=Ubuntu+Mono&display=swap" 
      rel="stylesheet">  
</head>
<body>
<div id="ContactUs">
        <h1>Contact Us</h1>
        <form action="#">
            <div class="form-shape">
                <label for="query">
                    Type of Query
                </label>
                <select name="myQuery" id="query">
                    <option value="sel" selected>
                        Select
                    </option>
                    <option value="ord">
                        Order related Issues
                    </option>
                    <option value="Site">
                        Site related Issues
                    </option>
                    <option value="fed">
                        Complaint related Issues
                    </option>
                    <option value="others">
                        Others
                    </option>
                </select>
            </div>
            <div class="form-shape">
                <label for="name">Name</label>
                <input type="text" name="myName" 
                    id="name" 
                    placeholder="Enter your Name">
            </div>
            <div class="form-shape">
                <label for="email">Email-Id</label>
                <input type="email" name="myEmail" 
                    id="email" 
                    placeholder="Enter your email">
            </div>
            <div class="form-shape">
                <label for="pho">Phone Number</label>
                <input type="phone" name="myPhone" 
                    id="pho" 
                    placeholder="Enter your Phone no">
            </div>
            <div id="radio">
                Are you a member of OnlneFoodShop:
                Yes <input type="radio" name="eligible">
                No <input type="radio" name="eligible">
            </div>
            <div class="form-shape">
                <label for="message">
                    Ellaborate your query
                </label>
                <textarea name="mesg" id="message" 
                    cols="30" rows="10">
                </textarea>
            </div>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>
</body>
</html>
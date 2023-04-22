<%-- 
    Document   : Result
    Created on : Apr 16, 2023, 8:06:54 AM
    Author     : LowKey
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Book.Product" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK STORE</title>
<style>
        
     body{
        background-color: skyblue;
    }
    .l{
      width: 100%;
      height: 147px;
      border: 0px solid black;
       font-size: 110px; 
       text-align: center;
       background-color:skyblue;

       color:wheat;
    }
    .nav{
       height: 40px;
       width: 100%;
       background-color:skyblue;
      
    }
    
   

   .n{
      font-size: 20px;  
        text-decoration: none;
        margin-left:200px;
        color:white;
    }
   .sac input[type="text"]{
       border: none;
	text-align:  center;
	border-bottom: solid 2px;
	height: 30px;
	width: 300px;
	margin-top:0px;
        margin-left: -10%;
	font-size: 16px;  
        
    }
    
    
    .bt{
       background-color: pink;
       color: white;
       height: 30px;
       margin-left: 10%;
     
	font-size: 16px;  
       width: 100px;
           
        
    }
    .sac{
        width: 100%;
        height: 90px;
        margin-left: 30%;
        
    }
    h1
    {
     color: brown;
     font-size: 30px;
     margin-left: 0px;
        
    }
    h2
    {
     color: brown;
     font-size: 30px;
     margin-left: 18px;
        
    }
    ul{
     list-style-type: none; 
        
    }
    .k{
        background-color: skyblue;
        position: absolute;
        height: 20%;
        width: 30%;
        margin-left: 9%;
        font-size: 30px;
        box-shadow: 20px 20px 3px 4px black;
    }
	</style>
</head>
<body>
 <div class="l">BOOK STORE</div>
    <div class="nav">
       <a class="n" href="index.html">Home </a>
      
    </div>
        <div class="sac">
	<h1>Enter Book name here!</h1>
	<form method="get" action="Search.jsp">
        <div class="sac">
	<input type="text" name="query" placeholder="Search here Book"><br>
        <button type="submit" value="Search" class="bt">Search</button><br>
        </div>
        
            
            <h2>All   Books</h2><br>
            <div class="k">
            <ul>
		<% for (Product product : Product.getProducts()) { %>
			<li><span class="product-id">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= product.getId() %>:</span> <%= product.getName() %></li>
		<% } %>
	</ul>
            </div>
        </form>
</body>
</html>



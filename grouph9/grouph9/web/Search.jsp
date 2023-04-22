<%-- 
    Document   : Search
    Created on : Apr 16, 2023, 8:07:38 AM
    Author     : LowKey
--%>


<%@ page language="java" contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Book.Product" %>
<%
    String query = request.getParameter("query"); 
    List<Product> products = Product.searchForProducts(query);
    
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Search Book</title>
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
      
      
    }
    
   

   .n{
      font-size: 20px;  
        text-decoration: none;
        margin-left: 150px;
        font-size: 30px;
        color:white;
    }
   
 
    .bt{
      background-color: pink;
      height: 40px;
      width: 150px;
       color:sliver;
        font-size: 20px;
    }
    h1
    {
     color: brown;
     font-size: 16px;
     margin-left: 0px;
        
    }
    .h1
    {
     color: #000;
     font-size: 76px;
     margin-left: 0px;
        
    }

    h2
    {
     color: brown;
     font-size: 25px;
     margin-left: 18px;
        
    }
    .container{
        width: 50%;
        height: 30%;
        margin-left: 20%;
        font-size: 20px;
        background-color:skyblue;
         box-shadow: 20px 20px 3px 4px black;
    }
	</style>
</head>
<body>	
<div class="l">BOOK STORE</div>
    <div class="nav">
        <a class="n" href="index.html">Home </a>
        
    </div>
    
   
  <div class="container">
      <h1>Results</h1> 
   <form method="get" action="Purchase.jsp">
  <h1 style="font-size: 30px;color: #133B4F;text-transform: uppercase;"></h1>
  <p class="search-query">Showing Book results for: <%= query %></p>
  <ul class="Book-list">
    <% for (Product product : products) { %>
    <li class="Book-item">
    <h2 class="Book-name">Book Name : <%= product.getName() %></h2>
    <p class="Book-description"><b>Book Description : </b><%= product.getDescription() %></p>
     <input type="hidden" name="id" value="<%= product.getId() %>">
     <br><br>
     <button type="submit" class="bt" value="buynow">Buy now</button>
      </li>
    <% } %>
  </ul>
           </form>   
            </div>
        
</body>
</html>



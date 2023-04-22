<%-- 
    Document   : Purchase
    Created on : Apr 16, 2023, 8:05:55 AM
    Author     : LowKey
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Book.Product" %>
<%
    // Get the product ID from the request parameter
    int productId = Integer.parseInt(request.getParameter("id"));
    
    // Retrieve the product object from the JavaBean
    Product product = Product.getProductById(productId);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>book</title>
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
       background-color: skyblue;
      
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
	margin-top: 0px;
	font-size: 16px;  
        
    }
    
    .bt{
       background-color: pink;
       color:silver;
       height: 30px;
       margin-left: 30px;
       width: 100px;
           
        
    }
    .sac{
        width: 100%;
        height: 90px;
        
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
    
     .form{
        margin-left: 490px;
        width: 400px;
      height: 260px;
      border: 0px solid black;
      margin-top: 80px;
       font-size: 12px; 
       text-align: center;
       
    }
    .btn{
      background-color: pink;
      height: 40px;
      width: 150px;
       color:sliver;
        font-size: 20px;
    }
.h2{
   margin-left: 510px; 
    
}
    .form input{
       border: none;
	text-align:  center;
	border-bottom: solid 2px;
	height: 30px;
	width: 300px;
	margin-top: 13px;
	font-size: 16px;  
        
    }
    
    .container{
        width: 50%;
        height: 30%;
        text-align: center;
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
    <form action='Process.jsp' method='POST'>
  <h1 style="font-size: 30px;color: #133B4F;text-transform: uppercase;">Purchase <%= product.getName() %></h1>
           <div class="input-group">
            <label> Book Name:  </label><br>
            <input type='text' name='name' value="<%= product.getName() %>" />
           </div>
           <div class="input-group"><br>
            <label> Book Description: </label><br>
             <input type='text' name='description'value="<%= product.getDescription() %>" />
           </div>
           <div class="input-group"><br>
            <label> Book price: </label><br>
             <input type='text' name='price'value="<%= product.getPrice() %>" />
           </div>
           
           <div class="input-group">
             <input type="hidden" name="product_id" value="<%= product.getId() %>">
           </div>
          
          <br>
            
           <button type='Submit' value="Purchase" class="btn"/>Purchase</button>
        </form>
      
            </div>
                
</body>
</html>


<%-- 
    Document   : approved
    Created on : Apr 16, 2023, 8:08:21 AM
    Author     : LowKey
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <style>
         body{
        background-color: skyblue;
    }
    .l{
      width: 100%;
      height: 14px;
      border: 0px solid black;
       font-size: 110px; 
       text-align: center;
       background-color:skyblue;

       color:wheat;
    } 
   .container form{
    width: 90%;
    max-width: 600px;
    padding: 50px 50px 50px;
    background: skyblue;
    border-radius: 4px;
    box-shadow: 0 4px 30px rgba(0,0,0,0.5);
    position: relative;
   
}
        
.container{
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	

}
 .nav{
       height: 40px;
       width: 10%;
       background-color:skyblue;
       margin-top: -520px;
       margin-left: 10%;
      
    }
    
   

   .n{
      font-size: 20px;  
        text-decoration: none;
        margin-left: 10px;
        font-size: 28px;
        color: white;
    }
        </style>
    <body>
        <div class="l">BOOK STORE</div>
        
    <div id="home">
         
    <div class="container">
    <form>
 <h1 style="font-size: 30px;color: #133B4F;text-transform: uppercase;">Book Detail</h1>
     <jsp:useBean id = "product" scope="request" class= "Book.Product"> 
      <jsp:setProperty name = "product" property = "name" value="${param.name}"/>
      <jsp:setProperty name = "product" property = "price" value="${param.price}"/>
      <jsp:setProperty name = "product" property = "description" value="${param.description}"/>
  </jsp:useBean>
        <p>Book Description : <jsp:getProperty name="product" property="description"/></p>
        <p>Book Name : <jsp:getProperty name="product" property="name"/></p>
        <p>Book Price : <jsp:getProperty name="product" property="price"/></p>
<%
    String message = "Thank you !!!";
    out.println("<p>You have successfully purchased " + product.getName() + ".</p>");
    out.println("<h4>" + message + "</h4>");
    
%>
        </form>
       </div>
        <div class="nav">
        <a class="n" href="index.html">Home </a>
       
    </div>
     </div>
    </body>
</html>
   

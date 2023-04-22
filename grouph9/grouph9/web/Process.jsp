<%-- 
    Document   : Process
    Created on : Apr 16, 2023, 8:04:31 AM
    Author     : LowKey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Purchase</title>
  <style>  
    .lg{
      width: 100%;
      height: 147px;
      border: 0px solid black;
       font-size: 110px; 
       background-color:skyblue;

       color:silver;
    }
    
    .nav{
       height: 40px;
       width: 100%;
       background-color: skyblue;
      
    }
    
   

   .nav1{
      font-size: 20px;  
        text-decoration: none;
        margin-left: 10px;
        color: #fff;
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
       color: silver;
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
        border: 1px solid gray;
	text-align:  center;
	height: 30px;
	width: 300px;
	margin-top: 5px;
	background-color:green;
        color:#fff;
        margin-left: 5px;

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
	</style>
    </head>
    <body>
     <div class="lg">BOOK STORE</div>
    <div class="nav">
        <a class="nav1" href="index.html">Home </a>
        
    </div>
        <main>
            <div class="container">
            <form>
       <jsp:forward page = "approved.jsp" />
       
        </form>
            </div>
        </main>
     <
    </body>
</html>
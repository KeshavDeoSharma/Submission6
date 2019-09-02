<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.keshav.SpringBootExample.model.ImportData"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html lang="en">
<head>

<title>Upadte Password</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="importStockPageStyle.css" />
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="shortcut icon"
href="http://www.brianshim.com/webtricks/wp-content/uploads/2012/11/stars_favicon.png"
type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="./jsp/ipoplanned.css">

<!-- <meta charset="ISO-8859-1"> -->
<script type="text/javascript">
 function confirmPass() {
    	 //alert("inside the check password");
    
        var pass = document.getElementById("inputnPassword").value
        var confPass = document.getElementById("inputnPassword1").value
        if(pass!=confPass) {
            alert("Wrong confirm password !");
        }
    }
</script>
</head>
<body>
  <div class="container">
       <div class="card card-container">
           <header>
<div class="login-head">
              <h1 class="login-head-content"><i class="fa fa-pencil-square-o"></i>  Update Password</h1>
           </div>
           </header>
          <form:form class="form-signin" action="/changePassword" method="POST" modelAttribute="register"  >
               <span id="reauth-email" class="reauth-email"></span>
              
             Enter New Password: <form:input type="password" id="inputnPassword" class="form-control" placeholder="New password" path="newpassword" />
                Enter Confirm Password: <form:input type="password" id="inputnPassword1" class="form-control" placeholder="Confirm password" path="confirmpassword" onblur="confirmPass" />
              
               <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Submit</button>
           </form:form> 
    </div>
   
  </div>
       

</body>
</html>
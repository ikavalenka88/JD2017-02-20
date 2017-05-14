<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
 <html lang="en">
   <head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
     <title>Test</title>

     <!-- Bootstrap -->
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">
     <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
     <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
     <!--[if lt IE 9]>
       <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
       <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <![endif]-->
   </head>
   <body>
     <div class="container">
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <c:choose>
        <c:when test="${user!=null}"> 
        <a class="navbar-brand" href=do?command=Home>Home</a>
      </c:when>
    <c:otherwise>
            <a class="navbar-brand" href=do?command=Index>Home</a>
    </c:otherwise>
      </c:choose>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li><a href=do?command=AddBook>Add book</a></li>
          <li><a href=do?command=AllBooks>All books</a></li>
           <li><a href=do?command=AboutUs>About us</a></li>
        </ul>
         
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${user.fk_roles==1}">
           <li><a href=do?command=editusers>Edit users (admin)</a></li>
            </c:if>
             <c:if test="${user==null}">
           <li><a href=do?command=Login>Log in</a></li>
            <li><a href=do?command=SignUp>Sign up</a></li>
            </c:if>
              <c:if test="${user!=null}">
            <li><a href=do?command=Profile>Profile</a></li>
             </c:if>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
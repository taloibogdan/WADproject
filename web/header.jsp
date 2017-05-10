<%-- 
    Document   : header
    Created on : May 10, 2017, 4:46:28 PM
    Author     : Exodus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Photohelp</title>
            
        <!--Para que no se pueda ampliar en dispositivos moviles-->
        <meta name= "viewport" content="width=device-width, initial-scale=1">   
        <!-- CSS -->        
        <link rel = "stylesheet" type = "text/css" href = "css/style.css" />
        <!-- http://ionicons.com/--> 
        <link rel='stylesheet prefetch' href='http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap-theme.min.css" />

        <!-- JS JQuery --> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <!-- Slider --> 
        <link rel="stylesheet" href="slider/jquery.mCustomScrollbar.min.css" />
        <script src="slider/jquery.mCustomScrollbar.concat.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-5 col-md-6 col-md-offset-5 col-sm-6 col-sm-offset-5 col-xs-6 col-xs-offset-5">
                <a id="bigTitle" href="index.jsp">PHOTOHELP</a>                   
                    <div id="imaginary_container"> 
                        <div class="input-group stylish-input-group">
                            <input type="text" class="form-control"  placeholder="Search #Hashtag" >
                            <span class="input-group-addon">
                                <button type="submit">
                                    <span class="ion-search"></span>
                                </button>  
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="sidebar-nav-fixed affix">
            <div class="well left-nav">
                <ul class="nav">                        
                    <c:if test="${not empty sessionScope.user}">
                        <img class="avatar" src="images/avatar.png" width ="80%">
                        <h4 id="nameUser">${sessionScope.user.getUsername()}</h4>
                        <li class="active"><a href="#">Notifications</a>
                        </li>
                        <li><a href="request.jsp">Add Request</a>
                        </li>
                        <li><a href="#">Profile</a>
                        </li>
                        <li><a href="#">My Photos</a>
                        </li>
                        <li><a href="#">My Designs</a>
                        </li>   
                        <a href="#" class="hidden-sm"><i class="ion-log-out logOut"></i></a>
                    </c:if>
                    <c:if test="${empty sessionScope.user}">
                        <li class="active"><a href="login.jsp">Log In</a>
                        </li>
                        <li><a href="register.jsp">Register</a>
                        </li>
                    </c:if>
                </ul>
                
            </div>
            <!--/.well -->
        </div>

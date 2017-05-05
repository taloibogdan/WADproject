<%-- 
    Document   : index
    Created on : 20-abr-2017, 19:38:31
    Author     : casso
--%>

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
        <link rel = "stylesheet" type = "text/css" href = "css/request.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <!-- http://ionicons.com/--> 
        <link rel='stylesheet prefetch' href='http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap-theme.min.css" />

        <!-- JS JQuery --> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Slider --> 
        <link rel="stylesheet" href="slider/jquery.mCustomScrollbar.min.css" />
        <script src="slider/jquery.mCustomScrollbar.concat.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
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
                    <img class="avatar" src="images/avatar.png" width ="80%">
                    <h4 id="nameUser">Username</h4>
                    <li class="active"><a href="#">Notifications</a>
                    </li>
                    <li><a href="#">Profile</a>
                    </li>
                    <li><a href="#">My Photos</a>
                    </li>
                    <li><a href="#">My Designs</a>
                    </li>   
                    <a href="#" class="hidden-sm"><i class="ion-log-out logOut"></i></a>
                </ul>
                
            </div>
            <!--/.well -->
        </div>
           
        <div class="container">
            <div id="petiton">
                <h4 class="nameSection">New Petition</h4>
                <div class="horizontal-separator"></div>
                <form class="form-horizontal"  style=" margin-top: 2%;">
                    

                    <!-- Form Name -->
                    <legend>Upload Image</legend>

                    <!-- Text input-->
                    <div class="control-group">
                      <label class="control-label" for="title">Title</label>
                      <div class="controls">
                        <input id="title" name="title" type="text" placeholder="Name" class="input-xlarge">

                      </div>
                    </div>

                    <!-- Textarea -->
                    <div class="control-group">
                      <label class="control-label" for="Description">Description</label>
                      <div class="controls">                     
                        <textarea id="Description" name="Description" cols="200" rows="5" placeholder="Request for your edition"></textarea>
                      </div>
                    </div>

                    <!-- File Button --> 
                    <div class="control-group">
                      <label class="control-label" for="filebutton">Image File</label>
                      <div class="controls">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                      </div>
                    </div>

                    <!-- Button -->
                    <div class="control-group">
                      <label class="control-label" for="singlebutton"></label>
                      <div class="controls">
                        <button id="singlebutton" name="singlebutton" class="btn btn-info">Upload</button>
                      </div>
                    </div>

                    
                </form>
            </div>
            
        </div>
    </body>
</html>

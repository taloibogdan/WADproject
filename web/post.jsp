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
        <link rel = "stylesheet" type = "text/css" href = "css/style-post.css" />
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
                    <li><a href="request.jsp">Add Request</a>
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
               
        <div style="">
            <div style="float: left;width: 49%; margin-top: 1%;">                
                
                <div class="container postContent" style="">      
                     <div class="columns" style="position: fixed;">
                       <ul class="price">
                         <li class="header">Wild athletics</li>
                         <li class="grey">Username</li>
                         <li><img class="imageMain" src="photos/good1.jpg" width="30%"></li>
                         <li>
                             <p>Petitions...</p>
                         </li>     
                         <li>
                             <p>05/05/2017</p>
                         </li>   
                         <li class="grey"><a href="#" class="button">Download</a></li>
                       </ul>
                     </div>            
                 </div>
               
            </div>
            <div style="float: left;width: 49%; margin-top: 1%;">    
                
                <div class="postAfter" style="margin-bottom: 10%;">              
                    <div class="columns">
                      <ul class="price">
                        <li class="header">After</li>
                        <li class="grey">Username</li>
                        <li><img class="imageMain" src="photos/good1.jpg" width="30%"></li>

                        <li>
                            <p>Rate ★★★★★</p>
                        </li>
                        <li>
                            <input type="checkbox" name="select" value="isSelected" style="">Select to buy<br>
                        </li>                
                        <li class="grey"><a href="#" class="button">Download</a></li>
                      </ul>
                    </div>
                </div>   
                
                <div class="postAfter" style="margin-bottom: 10%;">              
                    <div class="columns">
                      <ul class="price">
                        <li class="header">After</li>
                        <li class="grey">Username</li>
                        <li><img class="imageMain" src="photos/good1.jpg" width="30%"></li>

                        <li>
                            <p>Rate ★★★★★</p>
                        </li>
                        <li>
                            <input type="checkbox" name="select" value="isSelected" style="">Select to buy<br>
                        </li>                
                        <li class="grey"><a href="#" class="button">Download</a></li>
                      </ul>
                    </div>
                </div>  
                 
                
            </div> 
             
            </div>
            
      </div>
        
        
     
       

        
        
    </body>
</html>


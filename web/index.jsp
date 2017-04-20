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
        <div class="mCustomScrollbar mainContent" data-mcs-theme="minimal-dark">
            <section>
                <h4 class="nameSection">New Petitions</h4>
                <div class="horizontal-separator"></div>
                <a href="#"><img class="imageMain" src="photos/nophotoshop1.jpg" width="25%"></a>
                <a href="#"><img class="imageMain" src="photos/nophotoshop2.jpg" width="30%"></a>
                <a href="#"><img class="imageMain" src="photos/nophotoshop3.jpg" width="25%"></a>
                <a href="#">More >></a>
            </section>
            <section>
                <h4>Best Editions</h4>
                <div class="horizontal-separator"></div>
                <a href="post.jsp"><img class="imageMain" src="photos/good1.jpg" width="30%"></a>
                <a href="#"><img class="imageMain" src="photos/good2.jpg" width="30%"></a>
                <a href="#"><img class="imageMain" src="photos/good3.jpg" width="20%"></a>
                <a href="#">More >></a>
            </section>
            <section>
                <h4>Worst Editions</h4>
                <div class="horizontal-separator"></div>
                <a href="#"><img class="imageMain" src="photos/worst1.jpg" width="30%"></a>
                <a href="#"><img class="imageMain" src="photos/worst2.jpg" width="30%"></a>
                <a href="#"><img class="imageMain" src="photos/worst3.jpg" width="20%"></a>
                <a href="#">More >></a>
            </section>
            <section>
                <h4>Top Trolls</h4>
                <div class="horizontal-separator"></div>
                <a href="#"><img class="imageMain" src="photos/troll1.jpg" width="25%"></a>
                <a href="#"><img class="imageMain" src="photos/troll2.jpg" width="30%"></a>
                <a href="#"><img class="imageMain" src="photos/troll3.jpg" width="20%"></a>
                <a href="#">More >></a>
            </section>

        </div>
    </body>
</html>


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
        <link rel = "stylesheet" type = "text/css" href = "css/profile.css" />
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
                    <li><a href="profile.jsp">Profile</a>
                    <li><a href="request.jsp">Add Request</a>
                    </li>
                    <li><a href="myrequests.jsp">My Requests</a>
                    </li>                    
                    <li><a href="#">My Designs</a>
                    </li>   
                    <a href="#" class="hidden-sm"><i class="ion-log-out logOut"></i></a>
                </ul>
                    
            </div>
            <!--/.well -->
        </div>
        <div class= "cointainer profile">
            <div class="container-fluid">
                <div class="row">
                  <div class="fb-profile">
                      <img align="left" class="fb-image-lg" src="http://manosbenditas.co/public/blog/wp-content/uploads/2016/05/camera-820018_960_720-850x300.jpg" alt="Profile image example"/>
                      <img align="left" class="fb-image-profile thumbnail" src="http://www.microfusa.com/sites/shared/files/styles/user_picture/public/default_images/user-avatar.jpg?itok=Hql7aOrq&c=3e3fe9a62c749511fc986b4c7903143a" alt="Profile image example"/>
                      <div class="fb-profile-text">
                          <h1>Username</h1>

                      </div>
                  </div>
                </div>
              </div> <!-- /container fluid-->  
              <div class="container">
                <div class="col-sm-8">

                    <div data-spy="scroll" class="tabbable-panel">
                      <div class="tabbable-line">
                        <ul class="nav nav-tabs ">
                          <li class="active">
                            <a href="#tab_default_1" data-toggle="tab">
                            About Me </a>
                          </li>
                          <li>
                            <a href="#tab_default_2" data-toggle="tab">
                           Historial</a>
                          </li>                         
                        </ul>
                        <div class="tab-content">
                          <div class="tab-pane active" id="tab_default_1">

                            <p>
                              Interests..
                            </p>                            
                            <h4>Education </h4>
                            <p>I have done PG in Human Resourses</p>
                            <h4>Occupation</h4>
                            <p>At present Working in Insurance sector</p>

                          </div>
                          <div class="tab-pane" id="tab_default_2">                            
                              <p>Working..</p>
                          </div>                         
                           
                        </div>
                      </div>
                    </div>

                </div>
                <div class="col-sm-4">
                 <div class="panel panel-default">
                  <div class="menu_title">
                     Details
                  </div>
                  <div class="panel-body">
                      <div class="row">
                          <div class="col-lg-12">
                               <div class="form-group">
                                   <label for="lastaccess">Last access:</label>
                                    <p> 22/05/2017</p>
                               </div>
                                <div class="form-group">
                                    <label for="fname">Full name:</label>
                                    <p> 26 Sep 2017</p>
                                </div>
                                <div class="form-group">
                                    <label for="email">email:</label>
                                    <p> example@gmail.com</p>
                                </div>
                                <div class="form-group">
                                   <label for="email">Other</label>
                                   <p> ...</p>
                                </div>
                                  
                              
                          </div>
                      </div>
                  </div>
              </div>
                </div>
            </div>
        </div>
        
    </body>
</html>

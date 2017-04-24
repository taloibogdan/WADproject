<%-- 
    Document   : register
    Created on : 20-abr-2017, 17:19:51
    Author     : casso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        
        <!-- JS JQuery --> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Validation -->        
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        <script src="js/validationRegister.js"></script>
        <script src="js/validationLogin.js"></script>
        
        
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        
        <!-- CSS -->        
        <link rel = "stylesheet" type = "text/css" href = "css/style-register.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap.min.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap-theme.min.css" />            
        
        
        <!-- JS  --> 
        <script src="js/validationRegister.js"></script>
    </head>
    <body>
        <div class="container">
            <form id="registerForm" class="form-horizontal" role="form" action="registrationController" method="post">
                <a href="login.jsp" id="mainTitle2"><h1 id="mainTitle">BestSeller</h1></a>               
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input name="firstName" type="text" id="firstName" placeholder="Full Name" class="form-control" autofocus>
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-9">
                        <input name="username" type="text" id="username" placeholder="Username" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input name="email" type="email" id="email" placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input name="password" type="password" id="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="rpassword" class="col-sm-3 control-label">Repite Password</label>
                    <div class="col-sm-9">
                        <input name="rpassword" type="password" id="rpassword" placeholder="Password Again" class="form-control">
                    </div>
                </div>                
                <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control">
                            <option>Spain</option>
                            <option>Italy</option>
                            <option>Afghanistan</option>
                            <option>Bahamas</option>
                            <option>Cambodia</option>
                            <option>Denmark</option>
                            <option>Ecuador</option>
                            <option>Romanian</option>
                            <option>Fiji</option>
                            <option>Gabon</option>
                            <option>Haiti</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->                                   
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
    </body>
</html>

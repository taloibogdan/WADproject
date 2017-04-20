<%-- 
    Document   : login
    Created on : 20-abr-2017, 17:17:12
    Author     : casso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- JS JQuery --> 
        <script src="js/jquery-3.2.1.min.js"></script>
        <!-- Validation --> 
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        
        <!-- CSS -->        
        <link rel = "stylesheet" type = "text/css" href = "css/style-login.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap.min.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap-theme.min.css" />            
        
        <!-- JS  --> 
        <script src="js/validationLogin.js"></script>
    </head>
    <body>
        <h1 id="mainTitle">BestSeller</h1>
        <div class="container">
        <div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="register.jsp" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
                                    
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="loginController" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
                                                                        <div id="errorLogin" style="inline-block">
                                                                        </div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </body>
</html>

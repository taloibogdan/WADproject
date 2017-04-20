<%-- 
    Document   : login
    Created on : 20-abr-2017, 19:38:43
    Author     : casso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
            
        <!--Para que no se pueda ampliar en dispositivos moviles-->
        <meta name= "viewport" content="width=device-width, initial-scale=1">   
        <!-- CSS -->        
        <link rel = "stylesheet" type = "text/css" href = "css/login.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css">  


        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <section id="login">
        <div class="container">
            <h1 id="title">PHOTOHELP</h1>
        	<div class="row">
        	    <div class="col-xs-12 main">
            	    <div class="form-wrap">
                    <h1 class="descryption">Log in with your account</h1>
                        <form role="form" action="javascript:;" method="post" id="login-form" autocomplete="off">
                            <div class="form-group">
                                <label for="email" class="sr-only">Email</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Identifier">
                            </div>
                            <div class="form-group">
                                <label for="key" class="sr-only">Password</label>
                                <input type="password" name="key" id="key" class="form-control" placeholder="Password">
                            </div>                            
                            <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in">
                        </form>
                        <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forgot your password?</a>
                        <hr>
            	    </div>
        		</div> <!-- /.col-xs-12 -->
        	</div> <!-- /.row -->
        </div> <!-- /.container -->
    </section>

    <div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
    	<div class="modal-dialog modal-sm">
    		<div class="modal-content">
    			<div class="modal-header">
    				<button type="button" class="close" data-dismiss="modal">
    					<span aria-hidden="true">×</span>
    					<span class="sr-only">Close</span>
    				</button>
    				<h4 class="modal-title">Recovery password</h4>
    			</div>
    			<div class="modal-body">
    				<p>Type your email account</p>
    				<input type="email" name="recovery-email" id="recovery-email" class="form-control" autocomplete="off">
    			</div>
    			<div class="modal-footer">
    				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
    				<button type="button" class="btn btn-custom">Recovery</button>
    			</div>
    		</div> <!-- /.modal-content -->
    	</div> <!-- /.modal-dialog -->
    </div> <!-- /.modal -->
    </body>
</html>

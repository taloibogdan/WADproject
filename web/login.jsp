<%-- 
    Document   : login
    Created on : 20-abr-2017, 19:38:43
    Author     : casso
--%>

<%@include file="header.jsp" %>

<link rel = "stylesheet" type = "text/css" href = "css/login.css" />
<script src="js/validationLogin.js"></script>

<section id="login">
<div class="container">
    <%--<a href="index.jsp" id="title" style=" margin-left: 35%; text-decoration: none ">PHOTOHELP</a>  --%>
    <div class="row">
        <div class="col-xs-12 main" style="top: -100px;" >
            <div class="form-wrap">
                <h1 class="description">Log in with your account</h1>
                <form role="form" action="LoginController" method="post" id="login-form" autocomplete="off">
                    <div class="form-group">
                        <label for="identifier" class="sr-only">Email or Username</label>
                        <input type="text" name="identifier" id="identifier" class="form-control" placeholder="Identifier" value="${requestScope.identifier}">
                        <c:if test="${not empty requestScope.idenError}">
                            <label id="identifier-error" class="error" for="identifier" style="">${requestScope.idenError}</label>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label for="password" class="sr-only">Password</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="Password">
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

<%@include file="footer.jsp" %>
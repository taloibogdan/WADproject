<%-- 
    Document   : register
    Created on : 20-abr-2017, 17:19:51
    Author     : casso
--%>

<%@include file="header.jsp" %>

<link rel = "stylesheet" type = "text/css" href = "css/style-register.css" />
<script src="js/validationRegister.js"></script>

<div class="container">
    <form id="registerForm" class="form-horizontal" role="form" action="RegistrationController" method="post">
        <a href="index.jsp" id="mainTitle2"><h1 id="mainTitle">PHOTOHELP</h1></a>               
        <div class="form-group">
            <label for="firstName" class="col-sm-3 control-label">Full Name</label>
            <div class="col-sm-9">
                <input name="firstName" type="text" id="firstName" placeholder="Full Name" class="form-control" autofocus value="${requestScope.name}">
                <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
            </div>
        </div>
        <div class="form-group">
            <label for="username" class="col-sm-3 control-label">Username</label>
            <div class="col-sm-9">
                <input name="username" type="text" id="username" placeholder="Username" class="form-control" value="${requestScope.user}">
                <c:if test="${not empty requestScope.unameError}">
                    <label id="username-exists-error" class="error" for="username" style="">${requestScope.unameError}</label>
                </c:if>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-9">
                <input name="email" type="email" id="email" placeholder="Email" class="form-control" value="${requestScope.email}">
                <c:if test="${not empty requestScope.emailError}">
                    <label id="email-exists-error" class="error" for="email" style="">${requestScope.emailError}</label>
                </c:if>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-9">
                <input name="password" type="password" id="password" placeholder="Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="rpassword" class="col-sm-3 control-label">Retype Password</label>
            <div class="col-sm-9">
                <input name="rpassword" type="password" id="rpassword" placeholder="Password Again" class="form-control">
            </div>
        </div>                
        <div class="form-group">
            <label for="country" class="col-sm-3 control-label">Country</label>
            <div class="col-sm-9">
                <select id="country" class="form-control" value="${requestScope.country}">
                    <option>Spain</option>
                    <option>Italy</option>
                    <option>Afghanistan</option>
                    <option>Bahamas</option>
                    <option>Cambodia</option>
                    <option>Denmark</option>
                    <option>Ecuador</option>
                    <option>Romania</option>
                    <option>Fiji</option>
                    <option>Gabon</option>
                    <option>Haiti</option>
                </select>
            </div>
        </div> <!-- /.form-group -->    
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
                <c:if test="${not empty requestScope.dbError}">
                    <label id="database-error" class="error" for="submit" style="">${requestScope.dbError}</label>
                </c:if>
            </div>
        </div>
    </form> <!-- /form -->
</div> <!-- ./container -->

<%@include file="footer.jsp" %>

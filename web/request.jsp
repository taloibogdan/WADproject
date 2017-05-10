<%-- 
    Document   : index
    Created on : 20-abr-2017, 19:38:31
    Author     : casso
--%>

<%@include file="header.jsp" %>

<link rel = "stylesheet" type = "text/css" href = "css/request.css" />

<div class="container">
    <div id="petiton">
        <h4 class="nameSection">New Petition</h4>
        <div class="horizontal-separator"></div>
        <form class="form-horizontal"  style=" margin-top: 2%;" action="RequestController" method="post" enctype="multipart/form-data">
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
                <label class="control-label" for="description">Description</label>
                <div class="controls">                     
                    <textarea id="description" name="description" cols="200" rows="5" placeholder="Request for your edition"></textarea>
                </div>
            </div>

            <!-- File Button --> 
            <div class="control-group">
                <label class="control-label" for="file">Image File</label>
                <div class="controls">
                    <input id="file" name="file" class="input-file" type="file">
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
  
<%@include file="footer.jsp" %>
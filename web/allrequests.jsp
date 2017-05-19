
<%@include file="header.jsp" %>

<link rel = "stylesheet" type = "text/css" href = "css/style-post.css" />

    <h2 style="text-align:center; margin-left: 1%">My Requests</h2>
    
    <c:forEach var="photo" items="${allphotos}">
        <div class="container postContent" style="margin-top: 40px; ">           
            <div class="columns">
              <ul class="price">
                <li class="header">${photo.getName()}</li>
                <li class="grey">${photo.getOwner().getUsername()}</li>
                <li><img class="imageMain" src="${photo.getPath()}" width="30%"></li>
                
                <li>
                    <p>${photo.getRequest()}</p>
                </li>
                <li>
                    <p>Edits: ${photo.getEdits().size()}</p>
                </li>                
                <li class="grey"><a href="PostController?postid=${photo.getId()}" class="button">Go To Post</a></li>
              </ul>
            </div>
        </div>
    </c:forEach>
        
<%@include file="footer.jsp" %>


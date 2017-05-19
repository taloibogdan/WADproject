
<%@include file="header.jsp" %>

<link rel = "stylesheet" type = "text/css" href = "css/style-post.css" />

    <h2 style="text-align:center; margin-left: 1%">My Requests</h2>
    
    <c:forEach var="edit" items="${sessionScope.user.getEdits()}">
        <div class="container postContent" style="margin-top: 40px; ">           
            <div class="columns">
              <ul class="price">
                <li class="header">${edit.getOriginal().getName()}</li>
                <li><img class="imageMain" src="${edit.getPath()}" width="30%"></li>
                
                <li>
                    <p>${edit.getComment()}</p>
                </li>         
                <li class="grey"><a href="PostController?postid=${edit.getOriginal().getId()}" class="button">Go To Post</a></li>
              </ul>
            </div>
        </div>
    </c:forEach>
        
<%@include file="footer.jsp" %>


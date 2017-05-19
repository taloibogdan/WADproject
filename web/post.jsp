<%-- 
    Document   : index
    Created on : 20-abr-2017, 19:38:31
    Author     : casso
--%>
<%@include file="header.jsp" %>
<link rel = "stylesheet" type = "text/css" href = "css/style-post.css" />
<div style="">
    <div style="float: left;width: 49%; margin-top: 1%;">                
        <div class="container postContent" style="">      
            <div class="columns" style="position: fixed; width: 30%">
                <ul class="price">
                    <li class="header">${photo.getName()}</li>
                    <li class="grey">${photo.getOwner().getUsername()}</li>
                    <li><img class="imageMain" src="${photo.getPath()}" width="30%"></li>
                    <li><p>${photo.getRequest()}</p></li>     
                    <li><p>Commission: $${photo.getCommission()}</p></li>   
                    <li class="grey"><a download="original.jpg" href="${photo.getPath()}" class="button">Download</a></li>
                </ul>
            </div>            
        </div>
    </div>
    <div style="float: left;width: 49%; margin-top: 1%;">    
        <c:forEach var="after" items="${photo.getEdits()}">
            <div class="postAfter" style="margin-bottom: 10%;">              
                <div class="columns">
                    <ul class="price">
                        <li class="header">After</li>
                        <li class="grey">${after.getEditor().getUsername()}</li>
                        <li><img class="imageMain" src="${after.getPathWatermarked()}" width="30%"></li>

                        <li>
                            <div class="stars">
                                <form action="">
                                    <input class="star star-5" id="star-5" type="radio" name="star"/>
                                    <label class="star star-5" for="star-5"></label>
                                    <input class="star star-4" id="star-4" type="radio" name="star"/>
                                    <label class="star star-4" for="star-4"></label>
                                    <input class="star star-3" id="star-3" type="radio" name="star"/>
                                    <label class="star star-3" for="star-3"></label>
                                    <input class="star star-2" id="star-2" type="radio" name="star"/>
                                    <label class="star star-2" for="star-2"></label>
                                    <input class="star star-1" id="star-1" type="radio" name="star"/>
                                    <label class="star star-1" for="star-1"></label>
                                </form>
                            </div>
                        </li>
                        <li>
                            <input type="checkbox" name="select" value="isSelected" style=""> Select to buy<br>
                        </li>                
                        <li class="grey"><a download="edit_${after.getEditor().getUsername()}.jpg" href="${after.getPath()}" class="button">Download</a></li>
                    </ul>
                </div>
            </div>   
        </c:forEach>
        <c:if test="${sessionScope.user.getUsername() != photo.getOwner().getUsername()}">
            <div class="postAfter" style="margin-bottom: 10%;">              
                <div class="columns">
                    <ul class="price">
                        <li class="grey" style="background-color: #d6e9c6">
                            <a href="uploadEdit.jsp?photoid=${photo.getId()}" class="button">Upload an Edit</a>
                        </li>
                    </ul>
                </div>
            </div>
        </c:if>
        </div>
    </div>
</div>
        
<%@include file="footer.jsp" %>


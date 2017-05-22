
<%@include file="header.jsp" %>

<link rel = "stylesheet" type = "text/css" href = "css/profile.css" />
        <div class= "cointainer profile">
            <div class="container-fluid">
                <div class="row">
                  <div class="fb-profile">
                      <img align="left" class="fb-image-lg" src="http://manosbenditas.co/public/blog/wp-content/uploads/2016/05/camera-820018_960_720-850x300.jpg" alt="Profile image example"/>
                      <img align="left" class="fb-image-profile thumbnail" src="http://www.microfusa.com/sites/shared/files/styles/user_picture/public/default_images/user-avatar.jpg?itok=Hql7aOrq&c=3e3fe9a62c749511fc986b4c7903143a" alt="Profile image example"/>
                      <div class="fb-profile-text">
                          <h1>${sessionScope.user.getUsername()}</h1>

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
                                    <p> ${sessionScope.user.getName()}</p>
                                </div>
                                <div class="form-group">
                                    <label for="email">email:</label>
                                    <p> ${sessionScope.user.getEmail()}</p>
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

<%@include file="footer.jsp" %>
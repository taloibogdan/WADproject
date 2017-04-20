<%-- 
    Document   : index
    Created on : 20-abr-2017, 17:21:46
    Author     : casso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BestSeller</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- JS JQuery --> 
        <script src="js/jquery-3.2.1.min.js"></script>
        
        
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        
        <!-- CSS -->        
        <link rel = "stylesheet" type = "text/css" href = "css/style-index.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/style-item.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap.min.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap-theme.min.css" />
        
        <!-- http://ionicons.com/--> 
        <link rel='stylesheet prefetch' href='http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
        
        <!-- Slider --> 
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css" />
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    </head>
    <body>
        <div class="container headerM">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                <a id="bigTitle" href="index.html">BESTSELLER</a>                   
                    <div id="imaginary_container"> 
                        <div class="input-group stylish-input-group">
                            <input type="text" class="form-control"  placeholder="Search #Hashtag" >
                            <span class="input-group-addon">
                                <button type="submit">
                                    <span class="ion-search"></span>
                                </button>  
                            </span>
                        </div>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        <div class="sidebar-nav-fixed affix">
            <div class="well left-nav">
                <ul class="nav">                        
                    <img class="avatar" src="img/avatar.png" width ="80%">
                    <h4 id="nameUser">Username</h4>
                    <a href="cart.html" class="hidden-sm"><i class="fa fa-shopping-cart cartRight"></i></a>
                    <li class="active"><a href="#">Notifications</a>
                    </li>
                    <li><a href="#">Profile</a>
                    </li>
                    <li><a href="#">My Orders</a>
                    </li>
                    <li><a href="#">Favorites</a>
                    </li>
                    <a href="#" class="hidden-sm"><i class="glyphicon glyphicon-off logOut"></i></a>
                </ul>
            </div>
            <!--/.well -->
        </div>
        <div>
            <section class="mCustomScrollbar mainContent" data-mcs-theme="minimal-dark">
                
                <h4 class="nameSection">Products</h4>
                
                <div class="horizontal-separator"></div>
                
                <div class="row">                    
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">                    
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">                    
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="col-item">
                            <div class="photo">
                                <img src="http://placehold.it/350x260" class="img-responsive" alt="a" />
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="price col-md-6">
                                        <h5> Sample Product</h5>
                                        <h5 class="price-text-color">$199.99</h5>
                                    </div>
                                    <div class="rating hidden-sm col-md-6">
                                        <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                        </i><i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="separator clear-left">
                                    <p class="btn-add">
                                        <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                                    <p class="btn-details">
                                        <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>

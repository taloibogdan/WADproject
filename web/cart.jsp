<%-- 
    Document   : cart
    Created on : 20-abr-2017, 17:24:23
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
                    <a href="#" class="hidden-sm"><i class="fa fa-shopping-cart cartRight"></i></a>
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
        <!--http://bootsnipp.com/snippets/featured/shopping-cart-bs-3 -->
            <section class="mainContent" >
                
                <h4 class="nameSection">Cart</h4>
                
                <div class="horizontal-separator"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-10 col-md-offset-1">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Total</th>
                                        <th> </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="col-sm-8 col-md-6">
                                        <div class="media">
                                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 62px; height: 72px; margin-right: 15%;"> </a>
                                            <div class="media-body" style="padding: 2%;">
                                                <h4 class="media-heading"><a href="#">Product name</a></h4>
                                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                                            </div>
                                        </div></td>
                                        <td class="col-sm-1 col-md-1" style="text-align: center">
                                        <input type="email" class="form-control" id="exampleInputEmail1" value="3">
                                        </td>
                                        <td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
                                        <td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
                                        <td class="col-sm-1 col-md-1">
                                        <button type="button" class="btn btn-danger">
                                            <span class="glyphicon glyphicon-remove"></span> Remove
                                        </button></td>
                                    </tr>
                                    <tr>
                                        <td class="col-sm-8 col-md-6">
                                        <div class="media">
                                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 62px; height: 72px; margin-right: 15%;"> </a>
                                            <div class="media-body" style="padding: 2%;">
                                                <h4 class="media-heading"><a href="#">Product name</a></h4>
                                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                                            </div>
                                        </div></td>
                                        <td class="col-sm-1 col-md-1" style="text-align: center">
                                        <input type="email" class="form-control" id="exampleInputEmail1" value="3">
                                        </td>
                                        <td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
                                        <td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
                                        <td class="col-sm-1 col-md-1">
                                        <button type="button" class="btn btn-danger">
                                            <span class="glyphicon glyphicon-remove"></span> Remove
                                        </button></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>   </td>
                                        <td>   </td>
                                        <td>   </td>
                                        <td><h5>Subtotal</h5></td>
                                        <td class="text-right"><h5><strong>$24.59</strong></h5></td>
                                    </tr>
                                    <tr>
                                        <td>   </td>
                                        <td>   </td>
                                        <td>   </td>
                                        <td><h5>Estimated shipping</h5></td>
                                        <td class="text-right"><h5><strong>$6.94</strong></h5></td>
                                    </tr>
                                    <tr>
                                        <td>   </td>
                                        <td>   </td>
                                        <td>   </td>
                                        <td><h3>Total</h3></td>
                                        <td class="text-right"><h3><strong>$31.53</strong></h3></td>
                                    </tr>
                                    <tr>
                                        <td>   </td>
                                        <td>   </td>
                                        <td>   </td>
                                        <td>
                                        <button type="button" class="btn btn-default">
                                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                                        </button></td>
                                        <td>
                                        <button type="button" class="btn btn-success">
                                            Checkout <span class="glyphicon glyphicon-play"></span>
                                        </button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                
            </section>
        </div>
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if IE 8]> <html class="ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>TechFab</title>
       <link rel="shortcut icon" href="resources/mypro/images/favicon.ico" />
        <link href='resources/mypro/css/googlefonts.css' rel='stylesheet' id="googlefont">
                <link href='resources/mypro/css/googlefonts1.css' rel='stylesheet' type='text/css'>
                <link href='resources/mypro/css/googlefonts2.css' rel='stylesheet' type='text/css'>
                <link href='resources/mypro/css/googlefonts3.css' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="resources/mypro/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/mypro/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/mypro/css/prettyPhoto.css">
        <link rel="stylesheet" href="resources/mypro/css/colpick.css">
        <link rel="stylesheet" href="resources/mypro/css/sequence-slider.css">
        <link rel="stylesheet" href="resources/mypro/css/owl.carousel.css">
        <link rel="stylesheet" href="resources/mypro/css/style.css">
        <link rel="stylesheet" href="resources/mypro/css/responsive.css">
                                         <link rel="stylesheet" href="resources/mypro/css/mycss.css">
                
        <script src="resources/js/angular.min.js"></script>
                <script src="resources/mypro/js/jquery.min.js"></script>
        
         <script src="resources/mypro/js/jquery.autocomplete.min.js"></script>
        
                 <script src="resources/mypro/js/myjs.js"></script>
      <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD45Nu6JYgh1oKG5G9ut7Nr4QW48gx-6ug&amp;sensor=false"></script>
        
        
        <!-- Favicon and Apple Icons -->
        <link rel="icon" type="image/png" href="resources/mypro/images/icons/icon.html">
        <link rel="apple-touch-icon" sizes="57x57" href="resources/mypro/images/icons/apple-icon-57x57.html">
        <link rel="apple-touch-icon" sizes="72x72" href="resources/mypro/images/icons/apple-icon-72x72.html">
        
        <!--- jQuery -->
        <script>window.jQuery || document.write('<script src="resources/mypro/js/jquery-1.11.0.min.js"><\/script>')
        
               
        
        </script>
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	    
		<style id="custom-style">
		.error{color:red;}
		
 		.autocomplete-suggestions { border: 1px solid #999; background: #FFF; overflow: auto; } 
 .autocomplete-suggestion { padding: 5px 5px; white-space: nowrap; overflow: hidden; font-size:22px} 
 .autocomplete-selected { background: #F0F0F0; } 
 .autocomplete-suggestions strong { font-weight: bold; color: #3399FF; } 
				
								
				
		</style>
    </head>
    <body>

    
    <div id="wrapper">
    	<header id="header">
    		<div id="header-top">
    			<div class="container">
    				<div class="row">
                        <div class="col-md-12">
        					<div class="header-top-left">
        						<ul id="top-links" class="clearfix">
        							<li><a href="wishlist" title="My Wishlist"><span class="top-icon top-icon-pencil"></span><span class="hide-for-xs">My Wishlist</span></a></li>
        							<li><a href="checkout?userId=${sessionScope.userId}" title="Checkout"><i class="icon-shopping-cart icon-large"></i>Checkout</a></li>
  			</ul>
        					</div><!-- End .header-top-left -->
        					<div class="header-top-right">
        						
        						<div class="header-top-dropdowns pull-right">
    								<div class="btn-group dropdown-language">
    									<button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
    										<span class="hide-for-xs">Admin page</span>
    									</button>
    									<ul class="dropdown-menu pull-right" role="menu">
    										<li><a href="category"><span class="hide-for-xs">Category</span></a></li>
    									<li><a href="subcategory"><span class="hide-for-xs">SubCategory</span></a></li>
    										<li><a href="supplier"><span class="hide-for-xs">Supplier</span></a></li>
    										<li><a href="brand"><span class="hide-for-xs">Brand</span></a></li>
    										<li><a href="product"><span class="hide-for-xs">Product</span></a></li>
    											</ul>
    								</div><!-- End .btn-group -->
    							</div><!-- End .header-top-dropdowns -->
    							
    							<div class="header-text-container pull-right">
    								<p class="header-text"></p>
    								<p class="header-link">
    								<security:authorize access="isAuthenticated()">welcome
    								<security:authentication property="principal.Username"/>
                                        </security:authorize>
                                <c:if test="${empty pageContext.request.userPrincipal}">
                                  <a href="login">Login</a>           </c:if>
                               <c:if test="${!empty pageContext.request.userPrincipal}">
                                      <a href="/TechFab/logout">Logout</a>
                               </c:if>

    								
        							&nbsp;or&nbsp;<a href="reg">create an account</a></p>
        							
        							
        							
        							
        							
    							</div><!-- End .pull-right -->
    						</div><!-- End .header-top-right -->
    					</div><!-- End .col-md-12 -->
    				</div><!-- End .row -->
    			</div><!-- End .container -->
    		</div><!-- End #header-top -->
    		
    		<div id="inner-header">
    			<div class="container">
    				<div class="row">
						<div class="col-md-5 col-sm-5 col-xs-12 logo-container">
							<h1 class="logo clearfix">
								<span></span>
								<a href="/TechFab/" title="TechFab"><img src="resources/mypro/images/mylogo1.png" alt="TechFab" width="70" height="50">echfab</a>
							</h1>
						</div><!-- End .col-md-5 -->
    					<div class="col-md-7 col-sm-7 col-xs-12 header-inner-right">
    							
    							<div class="header-box contact-infos pull-right">
    							
    								<ul>
    									<li><span class="header-box-icon header-box-icon-skype"></span>TechFab_support</li>
    									<li><span class="header-box-icon header-box-icon-email"></span><a href="contactus">techfab@gmail.com</a></li>
    								</ul>
    							</div><!-- End .contact-infos -->
    							
    							<div class="header-box contact-phones pull-right clearfix">
    								<span class="header-box-icon header-box-icon-earphones"></span>
    								<ul class="pull-left">
    									<li>+(022) 158 14 25 78</li>
    									<li>+(022) 851 21 48 15</li>
    								</ul>
    							</div><!-- End .contact-phones -->
    							
    					</div><!-- End .col-md-7 -->
    				</div><!-- End .row -->
    			</div><!-- End .container -->
    			
    			<div id="main-nav-container">
    				<div class="container">
    					<div class="row">
    						<div class="col-md-12 clearfix">
    							
    							<nav id="main-nav">
    								<div id="responsive-nav">
    									<div id="responsive-nav-button">
											Menu <span id="responsive-nav-button-icon"></span>
										</div><!-- responsive-nav-button -->
    								</div>
    								<ul class="menu clearfix">
    									<li>
											<a class="active" href="/TechFab/">HOME</a>
																					</li>
										<li class="mega-menu-container"><a href="#">SHOP</a>
										
											<div class="mega-menu clearfix">
													
													
													<div class="col-5">
														<a href="productdisplay" class="mega-menu-title">Category</a><!-- End .mega-menu-title -->
														<ul class="mega-menu-list clearfix">
														 <c:forEach items="${cList}" var="clist">
													<li><a href="productdisplay">${clist.categoryName}</a></li>
													
													</c:forEach>
													</ul>
												
													</div><!-- End .col-5 -->
												
													
													
													
													
													
													
															
															
				
												
													<div class="col-5">
														<a href="productdisplay" class="mega-menu-title">SubCategory</a><!-- End .mega-menu-title -->
														<ul class="mega-menu-list clearfix">
														 <c:forEach items="${scList}" var="sclist">
													<li><a href="productdisplay">${sclist.subCategoryName}</a></li>
													
													</c:forEach>
													</ul>
												
													</div><!-- End .col-5 -->
													
													
													
													<div class="col-5">
														<a href="productdisplay" class="mega-menu-title">Brands</a><!-- End .mega-menu-title -->
														<ul class="mega-menu-list clearfix">
														 <c:forEach items="${bList}" var="blist">
													<li><a href="productdisplay">${blist.brandName}</a></li>
													
													</c:forEach>
													</ul>
												
													</div><!-- End .col-5 -->
												
													
													
													
													
													
														</div><!-- End .mega-menu -->
										</li>
										
										
										<li><a href="productdisplay">Products</a>
											
										</li>
										<li><a href="contactus">Contact Us</a></li>
									</ul>
    								
    							</nav>
    							
    							<div id="quick-access">
    								<div class="dropdown-cart-menu-container pull-right">
    								<div class="btn-group dropdown-cart">
    							
									<a href="cartlist-{{userId}}" class="btn btn-custom dropdown-toggle" >
										<span class="cart-menu-icon"></span>
										CartList
									</a>
									
											</div><!-- End .btn-group -->
									</div><!-- End .dropdown-cart-menu-container -->
									
									
    							<form class="form-inline quick-search-form" role="form" action="getproducts">
									<div class="form-group">
										<input type="text" class="form-control"  id="w-input-search" placeholder="Search here">
									</div><!-- End .form-inline -->
									<button type="submit" id="quick-search" id="button-id" class="btn btn-custom"></button>
								</form>
    							</div><!-- End #quick-access -->
    						</div><!-- End .col-md-12 -->
    				</div><!-- End .row -->
    			</div><!-- End .container -->
    				
    			</div><!-- End #nav -->
    		</div><!-- End #inner-header -->
    	</header><!-- End #header -->
    	
    	
    	
    	
    	
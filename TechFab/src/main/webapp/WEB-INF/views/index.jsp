  <%@ include file="header.jsp" %>

        	<div ng-app="app" ng-controller="myController" >

        <section id="content">
        	
        	<div id="slider-sequence" class="homeslider">
        		<div class="sequence-prev"></div><!-- End sequence-prev-->
        		<div class="sequence-next"></div><!-- End sequence-next-->
        		<ul class="sequence-canvas">
        			<li class="sequence-slide1">
        				<div class="sequencebg">
        					<img src="resources/mypro/images/slide1.png" alt="Slide 1 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<img src="resources/mypro/images/slide1_1.png" alt="Model 1" class="sequence-model">
        					<div class="sequence-title">Special offer -25%</div>
        					<div class="sequence-subtitle">Performance &amp; Design. Taken right to the edge.</div>
        			
        				</div><!-- End .sequence-container -->
        			</li>
        			
        			<li class="sequence-slide2">
        				<div class="sequencebg">
        					<img src="resources/mypro/images/slide2.jpg" alt="Slide 2 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<div class="sequence-price">$1150</div>
        					<img src="resources/mypro/images/slide2_2.png" alt="Model 2" class="sequence-model">
        					<img src="resources/mypro/images/slide2_1.png" alt="Model 1" class="sequence-model2">
        					<div class="sequence-title">The next big thing...</div>
        					<div class="sequence-subtitle">Take, view and share photos with the 13MP camera and stunning 5" display.</div>
        					
        				</div><!-- End .sequence-container -->
        			</li>
        			
        			<li class="sequence-slide3">
        				<div class="sequencebg">
        					<img src="resources/mypro/images/slide3.jpg" alt="Slide 3 image" class="sequencebg-image">
        				</div><!-- End .sequencebg -->
        				<div class="sequence-container container">
        					<img src="resources/mypro/images/slide3_1.png" alt="Model 3" class="sequence-model">
        					<div class="sequence-title">Control. Navigate. Be Recognized.</div>
        					<div class="sequence-subtitle">Smart Interaction lets you interact with your TV as never before.</div>
        					
        					<img src="resources/mypro/images/slide3_4.png" alt="Mobile phone" class="sequence-phone">
        					<img src="resources/mypro/images/slide3_2.png" alt="Tablet" class="sequence-tablet">
        					<img src="resources/mypro/images/slide3_3.png" alt="Screen" class="sequence-screen">
        				</div><!-- End .sequence-container -->
        			</li>
        		</ul>
        		
					<ul class="sequence-pagination">
						<li>Frame 1</li>
						<li>Frame 2</li>
						<li>Frame 3</li>
					</ul>
        	</div><!-- End #slider-sequence -->
        	
        	
        	<div class="md-margin2x"></div><!-- Space -->
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				
        				<div class="row">
        					
        					<div class="col-md-9 col-sm-8 col-xs-12 main-content">
        						<header class="content-title">
									<h2 class="title">Our Products</h2>
									<p class="title-desc">Save your money and time with our store. Here's the best part of our impressive assortment.</p>
								</header>
        						<ul id="products-tabs-list" class="tab-style-1 clearfix">
        							<li class="active"><a href="#all" data-toggle="tab">All Products Available</a></li>
        							        						</ul>
        						
        						<div id="products-tabs-content" class="row tab-content" >
        							<div class="tab-pane active" id="all">
									<div class="col-md-4 col-sm-6 col-xs-12" ng-repeat="p in jsonData">
        								<div class="item">
												<div class="item-image-container">
													<figure>
													<a href="viewproduct-{{p.productId}}">
														<img src="resources/images/{{p.productId}}-4.jpg" alt="Phone 1" class="item-image">
														<img src="resources/images/{{p.productId}}-3.jpg" alt="Phone 1 Hover" class="item-image-hover">
													</a>
													</figure>
													<div class="item-price-container">
												
														<span class="item-price">{{p.productPrice}}</span>
													</div>
													<span class="new-rect">New</span>
													<span class="discount-rect">{{p.productDiscount}}%off</span>
												</div><!-- End .item-image -->
											
        									<div class="item-meta-container">
        										<h3 class="item-name"><a href="viewproduct-{{p.productId}}">{{p.productName}}</a></h3>
        										<div class="item-action">
        											<a href="/TechFab/addtocart-${sessionScope.productId}?userId=1" class="item-add-btn">
														<span class="icon-cart-text">Add to Cart</span>
													</a>
											<a href="wishlist-{{p.productId}}?userId=1" class="icon-button icon-like">Wishlist</a>
        										<a href="buynow-{{p.productId}}?userId=1" class="icon-button icon-compare">Buy now</a>
        											
        										</div><!-- End .item-action -->
        									</div><!-- End .item-meta-container -->	
        								</div><!-- End .item -->
        								
        								
        							</div><!-- End .col-md-4 -->
        							
        							</div><!-- End .tab-pane -->
        							
        							
        					</div><!-- End #products-tabs-content -->
        						
        						<div class="sm-margin"></div><!-- Space -->
								<div class="row">
									<div class="col-md-7 col-sm-7 col-xs-12">
                                        <header class="content-title">
                                            <h2 class="title">Welcome to TechFab</h2>
                                        </header>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TechFab is an electronic commerce company headquartered in Mumbai. It was founded in 2018 by Anirudh yadav. The company is registered in Singapore.TechFab has launched its own product range under the name "DigiFlip" with products including tablets, USBs, and laptop bags.
 <a href="productdisplay">Buy our products</a></p>
									</div><!-- End .col-md-7 -->
									<div class="col-md-5 col-sm-5 col-xs-12">
                                        <div class="sm-margin visible-xs"></div><!-- space -->
										<img src="resources/mypro/images/showcase.png" alt="Showcase Venedor" class="img-responsive">
									</div><!-- End .col-md-5 -->
								</div><!-- End .row -->
        						<div class="xlg-margin"></div><!-- Space -->
        						
        						        						<div class="lg-margin"></div><!-- Space -->
        					
        					</div><!-- End .col-md-9 -->
        					
        					<div class="col-md-3 col-sm-4 col-xs-12 sidebar">
        						<div class="widget subscribe">
        							<h3>BE THE FIRST TO KNOW</h3>
        							<p> Get all the latest information on Events, Sales and Offers. Sign up for the Venedor store newsletter today.</p>
									<form action="tyresponse" id="subscribe-form">
										<div class="form-group">
											<input type="email" class="form-control" id="subscribe-email" placeholder="Enter your email address">
										</div>
        								<input type="submit" value="SUBMIT" class="btn btn-custom">
        							</form>
        						</div>
        						<div class="widget testimonials">
        							<h3>Testimonials</h3>
        							
        							<div class="testimonials-slider flexslider sidebarslider">
        								<ul class="testimonials-list clearfix">
        									<li>
        										<div class="testimonial-details">
												<header>Best Service!</header>
                                TechFab allows users to submit reviews to the web page of each product. Reviewers must rate the product on a rating scale from one to five stars. TechFab provides a badging option for reviewers which indicate the real name of the reviewer.        										</div><!-- End .testimonial-details -->
        										<figure class="clearfix">
        											<figcaption>
        												<a href="">Anirudh yadav</a>
        												<span>28.1.2017</span>
        											</figcaption>
        										</figure>
        									</li>
        									<li>
        										<div class="testimonial-details">
												<header>Cool Style!</header>
Associates can access the TechFab catalog directly on their websites by using the TechFab Web Services (AWS) XML service. A new affiliate product, aStore, allows Associates to embed a subset of Amazon products within another website.       										</div><!-- End .testimonial-details -->
        										<figure class="clearfix">
        											<figcaption>
        												<a href="">vishal goyal</a>
        												<span>28.1.2017</span>
        											</figcaption>
        										</figure>
        									</li>
        								</ul>
        							</div><!-- End .testimonials-slider -->
        						</div><!-- End .widget -->
        						
        						
        						<div class="widget latest-posts">
        							<h3>Latest News</h3>
        							
        							<div class="latest-posts-slider flexslider sidebarslider">
        								<ul class="latest-posts-list clearfix">
        									<li>
        										<a href="productdisplay">
                                                    <figure class="latest-posts-media-container">
                                                        <img src="resources/mypro/images/post1-small.jpg" alt="lats post">
                                                    </figure>
                                                </a>
        										<h4><a href="productdisplay">35% Discount on second purchase!</a></h4>
        										<p>we are giving huge discounts on seccond purchase!so hurry up and buy your favourite products.</p>
        										<div class="latest-posts-meta-container clearfix">
        											<div class="pull-left">
        												<a href="productdisplay">Read More...</a>
        											</div><!-- End .pull-left -->
        											<div class="pull-right">
        												28.1.2017
        											</div><!-- End .pull-right -->
        										</div><!-- End .latest-posts-meta-container -->
        									</li>
        									
        									<li>
        										<a href="productdisplay">
                                                    <figure class="latest-posts-media-container">
                                                        <img src="resources/mypro/images/post2-small.jpg" alt="lats post">
                                                    </figure>
                                                </a>
        										<h4><a href="productdisplay">Free shipping for regular customers.</a></h4>
<p>we are giving free shipping to our regular customers for their continues love and support.</p>
        										<div class="latest-posts-meta-container clearfix">
        											<div class="pull-left">
        												<a href="#">Read More...</a>
        											</div><!-- End .pull-left -->
        											<div class="pull-right">
        												28.1.2017
        											</div><!-- End .pull-right -->
        										</div><!-- End .latest-posts-meta-container -->
        									</li>
        									
        									<li>
        										<a href="productdisplay">
                                                    <figure class="latest-posts-media-container">
                                                        <img src="resources/mypro/images/post3-small.jpg" alt="lats post">
                                                    </figure>
                                                </a>
        										<h4><a href="productdisplay">New products on sales!</a></h4>
<p>we are launching ne products and they will be available at lowest possible prices!enjoy shopping</p>
        										<div class="latest-posts-meta-container clearfix">
        											<div class="pull-left">
        												<a href="productdisplay">Read More...</a>
        											</div><!-- End .pull-left -->
        											<div class="pull-right">
        												28.1.2017
        											</div><!-- End .pull-right -->
        										</div><!-- End .latest-posts-meta-container -->
        									</li>
        									
        								</ul>
        							</div><!-- End .latest-posts-slider -->
        						</div><!-- End .widget -->
        						
        						<div class="widget banner-slider-container">
        							<div class="banner-slider flexslider">
        								<ul class="banner-slider-list clearfix">
        									<li><a href="#"><img src="resources/mypro/images/banner1.jpg" alt="Banner 1"></a></li>
        									<li><a href="#"><img src="resources/mypro/images/banner2.jpg" alt="Banner 2"></a></li>
        									<li><a href="#"><img src="resources/mypro/images/banner3.jpg" alt="Banner 3"></a></li>
        								</ul>
        							</div>
        						</div><!-- End .widget -->
        						
        					</div><!-- End .col-md-3 -->
        				</div><!-- End .row -->
        				
        				<div id="brand-slider-container" class="carousel-wrapper">
        					<header class="content-title">
								<div class="title-bg">
									<h2 class="title">Manufacturers</h2>
								</div><!-- End .title-bg -->
							</header>
                                <div class="carousel-controls">
                                    <div id="brand-slider-prev" class="carousel-btn carousel-btn-prev">
                                    </div><!-- End .carousel-prev -->
                                    <div id="brand-slider-next" class="carousel-btn carousel-btn-next carousel-space">
                                    </div><!-- End .carousel-next -->
                                </div><!-- End .carousel-controllers -->
                                <div class="sm-margin"></div><!-- space -->
                                <div class="brand-slider owl-carousel">
                                    <a href="#"><img src="resources/mypro/images/brand1.png" alt="Brand Logo 1"></a>
                                    <a href="#"><img src="resources/mypro/images/brand2.png" alt="Brand Logo 2"></a>
                                    <a href="#"><img src="resources/mypro/images/brand3.png" alt="Brand Logo 3"></a>
                                    <a href="#"><img src="resources/mypro/images/brand4.png" alt="Brand Logo 4"></a>
                                    <a href="#"><img src="resources/mypro/images/brand5.png" alt="Brand Logo 5"></a>
                                    <a href="#"><img src="resources/mypro/images/brand6.png" alt="Brand Logo 6"></a>
                                    <a href="#"><img src="resources/mypro/images/brand1.png" alt="Brand Logo 7"></a>
                                    <a href="#"><img src="resources/mypro/images/brand2.png" alt="Brand Logo 8"></a>
                                    <a href="#"><img src="resources/mypro/images/brand3.png" alt="Brand Logo 9"></a>
                                    <a href="#"><img src="resources/mypro/images/brand4.png" alt="Brand Logo 10"></a>
                                    <a href="#"><img src="resources/mypro/images/brand5.png" alt="Brand Logo 11"></a>
                                    <a href="#"><img src="resources/mypro/images/brand6.png" alt="Brand Logo 12"></a>
                                    <a href="#"><img src="resources/mypro/images/brand1.png" alt="Brand Logo 13"></a>
                                    <a href="#"><img src="resources/mypro/images/brand2.png" alt="Brand Logo 14"></a>
                                    <a href="#"><img src="resources/mypro/images/brand3.png" alt="Brand Logo 15"></a>
                                </div><!-- End .brand-slider -->
        				</div><!-- End #brand-slider-container -->
        				
        			</div><!-- End .col-md-12 -->
        		</div><!-- End .row -->
			</div><!-- End .container -->
			
			<script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.jsonData=${jsonProductList};
    });
    
    </script>
    
    </section>
    </div>
    
<%@ include file="footer.jsp" %>
        
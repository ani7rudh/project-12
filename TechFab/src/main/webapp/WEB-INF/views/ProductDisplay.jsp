  <%@ include file="header.jsp" %>
  
          	
  
  
  <section id="content">
        <div id="breadcrumb-container">
        		<div class="container">
					<ul class="breadcrumb">
						<li><a href="/TechFab/">Home</a></li>
						<li class="active">Product</li>
					</ul>
        		</div>
        	</div>
        	
        		
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				
        				<div class="row">
        					
        					<div class="col-md-9 col-sm-8 col-xs-12 main-content">
        						
        						
									
        						<div class="md-margin"></div><!-- .space -->
        						
        						
        						<div ng-app="app" ng-controller="myController" >
        						<div class="category-item-container">
        						<div class="row">
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
        							
        							        						</div><!-- End .row -->
        						</div><!-- End .category-item-container -->
        						</div>
        						
        						
        						
        						
        						
        						
        						
        						
        					</div><!-- End .col-md-9 -->
        					
        					<aside class="col-md-3 col-sm-4 col-xs-12 sidebar">
        						<div class="widget">
        							<div class="panel-group custom-accordion sm-accordion" id="category-filter">
										<div class="panel">
											<div class="accordion-header">
												<div class="accordion-title"><span>Category</span></div><!-- End .accordion-title -->
									<a class="accordion-btn opened"  data-toggle="collapse" data-target="#category-list-1"></a>
											</div><!-- End .accordion-header -->
											
										<div id="category-list-1" class="collapse in">
											<div class="panel-body">
											  <ul class="category-filter-list jscrollpane">
											      <c:forEach items="${cList}" var="clist">
													<li><a href="productdisplay">${clist.categoryName}</a></li>
													
													</c:forEach>
													</ul>
														
											</div><!-- End .panel-body -->
										</div><!-- #collapse -->
										</div><!-- End .panel -->
        								
        								<div class="panel">
											<div class="accordion-header">
												<div class="accordion-title"><span>SubCategory</span></div><!-- End .accordion-title -->
									<a class="accordion-btn opened"  data-toggle="collapse" data-target="#category-list-2"></a>
											</div><!-- End .accordion-header -->
								
										<div id="category-list-2" class="collapse in">
											<div class="panel-body">
											<ul class="category-filter-list jscrollpane">
												<c:forEach items="${scList}" var="subCategoryList">
													<li><a href="productdisplay">${subCategoryList.subCategoryName}</a></li>
													
													</c:forEach>
													
												</ul>
											</div><!-- End .panel-body -->
										</div><!-- #collapse -->
										</div><!-- End .panel -->
        							
        								
        									
        								
        								
        								
        								
        								
        								
        								
        								
        								
        								
        									</div><!-- #collapse -->
										</div><!-- End .panel -->
        							</div><!-- .panel-group -->
        						</div><!-- End .widget -->
        						
        						
        						
        					</aside><!-- End .col-md-3 -->
        				</div><!-- End .row -->
        				
        				
        			</div><!-- End .col-md-12 -->
        		<!-- End .row -->
            <!-- End .container -->
        
        </section><!-- End #content -->
       
  
  <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.jsonData=${jsonProductList};
    });
    
    </script>
    
 
  
  
  
<%@ include file="footer.jsp" %>
  
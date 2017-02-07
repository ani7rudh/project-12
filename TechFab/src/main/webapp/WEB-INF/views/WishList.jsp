
  
      <%@ include file="header.jsp" %>
          <div ng-app="app" ng-controller="myController" >

  
  <section id="content">
        	<div id="breadcrumb-container">
        		<div class="container">
					<ul class="breadcrumb">
						<li><a href="index-2.html">Home</a></li>
						<li class="active">WishList</li>
					</ul>
        		</div>
        	</div>
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
						<header class="content-title">
							<h1 class="title">WishList</h1>
							<p class="title-desc">Just this week, you can use the free premium delivery.</p>
						</header>
        				<div class="xs-margin"></div><!-- space -->
        				
        				<div class="row">
        					
        					<div class="col-md-12 table-responsive">
        						<table class="table cart-table">
        						<thead>
        							<tr>
										<th class="table-title">Product Name</th>
										<th class="table-title">Product Description</th>
										<th class="table-title">product Price</th>
										<th class="table-title">Quantity</th>
										<th class="table-title">SubTotal</th>
									  <th class="table-title">Remove</th>
										
        							</tr>
        						</thead>
								<tbody>
									<tr ng-repeat="p in productdata">
										<td class="item-name-col">
											<figure>
												<a href="productdisplay"><img src="resources/images/{{p.productId}}-4.jpg" alt="Lowlands Lace Blouse"></a>
											</figure>
											<header class="item-name"><a href="productdisplay">{{p.productName}}</a></header>
											
										</td>
										<td class="item-code">{{p.productDescription}}</td>
										<td class="item-price-col"><span class="item-price-special">{{p.productPrice}}</span></td>
										
									<td class="item-code">{{p.productQuantity}}</td>

										
										<td class="item-total-col"><span class="item-price-special">{{p.productQuantity * p.productPrice}}</span></td>
										<td><a href="deletewishList-{{p.wishListId}}" class="close-button"></a></td>
										
									</tr>
									</tbody>
							  </table>
							   <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
   
    	$scope.productdata=${wishList};
    });
    
    </script>
  
							  
							     			</div>		<!-- End .col-md-12 -->
        				</div><!-- End .row -->
        				
        						<div class="md-margin"></div><!-- End .space -->
        						<a href="/TechFab/" class="btn btn-custom">CONTINUE SHOPPING</a>
        						<a href="checkout?userId=${sessionScope.userId}" class="btn btn-custom">CHECKOUT</a>
        					</div><!-- End .col-md-4 -->
        				</div><!-- End .row -->
        				<div class="lg-margin2x"></div><!-- Space -->
        				</div></section></div>     				
<%@ include file="footer.jsp" %>
  
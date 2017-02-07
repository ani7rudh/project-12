<br><br>
<div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>T<span>echFab</span></h2>
                        <p>
                        TechFab is an electronic commerce company headquartered in Mumbai. It was founded in 2018 by Anirudh yadav. The company is registered in Singapore.TechFab has launched its own product range under the name "DigiFlip" with products including tablets, USBs, and laptop bags.

                        </p>
                       
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                           
                            <li><a href="login">Login</a></li>
                            <li><a href="wishlist">Wishlist</a></li>
                            <li><a href="contactus">contact us</a></li>
                            <li><a href="reg">Registration</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Address</h2>
                           <br>
                           SGD bd 1,RN 120,<br>
                           Link road,Andheri east<br>
                           Mumbai-400078
                                                
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="tyresponse" id="subscribe-form">
										<div class="form-group">
											<input type="email" class="form-control" id="subscribe-email" placeholder="Enter your email address">
										</div>
        								<input type="submit" value="SUBMIT" class="btn btn-custom">
        							</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
   
     </div><!-- End #wrapper -->
        <a href="#" id="scroll-top" title="Scroll to Top"><i class="fa fa-angle-up"></i></a><!-- End #scroll-top -->
	<!-- END -->
    <script src="resources/mypro/js/bootstrap.min.js"></script>
    <script src="resources/mypro/js/smoothscroll.js"></script>
    <script src="resources/mypro/js/retina-1.1.0.min.js"></script>
    <script src="resources/mypro/js/jquery.placeholder.js"></script>
    <script src="resources/mypro/js/jquery.hoverIntent.min.js"></script>
    <script src="resources/mypro/js/jquery.tweet.min.js"></script>
    <script src="resources/mypro/js/jquery.flexslider-min.js"></script>
    <script src="resources/mypro/js/owl.carousel.min.js"></script>
    <script src="resources/mypro/js/jflickrfeed.min.js"></script>
    <script src="resources/mypro/js/jquery.prettyPhoto.js"></script>
    <script src="resources/mypro/js/jquery.sequence-min.js"></script>
    <script src="resources/mypro/js/colpick.js"></script>
    <script src="resources/mypro/js/main.js"></script>
	
    <script>
    	$(function() {
    		// Sequence.js Slider Plugin
			var options = {
				nextButton: true,
				prevButton: true,
				pagination:true,
				autoPlay: true,
				autoPlayDelay: 8500,
				pauseOnHover: true,
				preloader: true,
				theme: 'slide',
				speed: 700,
				animateStartingFrameIn: true
                },
				homeSlider = $('#slider-sequence').sequence(options).data("sequence");
    	
    	});
    	

    </script>
    <script>
		$(function() {

			var carouselContainer = $('#product-carousel'),
                productImg =  $('#product-image');

			carouselContainer.elastislide({
				orientation : 'vertical',
				minItems : 4
					
			});

            productImg.mlens({
                imgSrc: $("#product-image").attr("data-big"),         
                lensShape: "square",
                lensSize: 150,
                borderSize: 4,
                borderColor: "#999",
                borderRadius: 0
            });
			
			
			var oldImg = productImg.attr('src');
			carouselContainer.find('li').on('mouseover', function() {
				
				var newImg = $(this).find('a').attr('href');
				
                productImg.attr({'src': newImg, 'data-big': newImg}).trigger('imagechanged');
                
			});

            // triggered with custom event
            productImg.on('imagechanged', function() {
                productImg.mlens("update", 0 ,{
                    imgSrc: productImg.attr("data-big"),
                    lensShape: "square",
                    lensSize: 150,
                    borderSize: 4,
                    borderColor: "#999"
                });
            });

		});
	</script>
    
    
    </body>
</html>
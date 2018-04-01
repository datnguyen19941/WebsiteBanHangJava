<%-- 
    Document   : Singgel
    Created on : Jun 29, 2017, 10:54:11 PM
    Author     : Admin1
--%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRODUCT DETAILS</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
    </head>
    <body>
        
        <%
            ProductDAO productDAO=new ProductDAO();
            Product product = new Product();
            String productID = "";
            if(request.getParameter("product") != null){
                productID = request.getParameter("product");
                product = productDAO.getProduct(Long.parseLong(productID));
            
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container">
			<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">	
						<ul id="etalage">
							<li>
								<a href="#">
									<img class="etalage_thumb_image img-responsive" src="<%=product.getProductImage()%>" atl="<%=product.getProductName()%>">
									<img class="etalage_source_image img-responsive" src="<%=product.getProductImage()%>" atl="<%=product.getProductName()%>">
								</a>
							</li>
							
						</ul>

					</div>	
					<div class="col-md-7 single-top-in">
						<div class="single-para">
							<h4><%=product.getProductName()%>  </h4>
							<div class="para-grid">
								<span class="add-to"><%=product.getProductPrice()%>VND</span>
								<a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" class="hvr-shutter-in-vertical cart-to">Thêm vào giỏ hàng</a>		
								<div class="clearfix"></div>
							 </div>
							
							
							<p><%=product.getProductDescription()%></p>
								
							
						</div>
					</div>
				<div class="clearfix"> </div>
				<div class="content-top-in">
						
						
					<div class="clearfix"></div>
                                        <div class="fb-comments" data-href="http://localhost:8080/Quan_Ly_Ban_Hang/Single.jsp?product=<%=product.getProductID()%>" data-width="700" data-numposts="5"></div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="single-bottom">
						<img src="upload/1.gif"  >
					</div>
					<div class="single-bottom">
                                            <span></span>
						<img src="upload/2.png"  >
					</div>
                                    <div class="single-bottom">
						<img src="upload/3.png"  >
					</div>
					<div class="single-bottom">
                                        </div>
							<div class="clearfix"> </div>
							</div>
				</div>
				</div>
				<div class="clearfix"> </div>
		</div>
	</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

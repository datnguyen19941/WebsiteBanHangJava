<%-- 
    Document   : Contact
    Created on : Jun 29, 2017, 10:50:52 PM
    Author     : Admin1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIÊN HỆ</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->

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
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container">
			<div class="contact">
			<h2 class=" contact-in">CONTACT</h2>
				
				<div class="col-md-6 contact-top">
					<h3>Info</h3>
					<div class="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6817.018551795314!2d106.7126905271098!3d10.802052569295382!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528a459cb43ab%3A0x6c3d29d370b52a7e!2zSFVURUNIIC0gxJDhuqFpIGjhu41jIEPDtG5nIG5naOG7hyBUUC5IQ00!5e0!3m2!1svi!2s!4v1499186728155" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					
					<p>XXMOBILE - MUA LIỀN TAY </p>
					<p>Hệ thống mua sắm hàng điện tử hàng đầu VN</p>				
					<ul class="social ">
						<li><span><i> </i>Bình Thạnh, Hồ Chí Minh</span></li>
						<li><span><i class="down"> </i>Hotline: (028) 888 8888</span></li>
						<li><a href="hotro@xxmobile.com"><i class="mes"> </i>hotro@xxmobile.com</a></li>
					</ul>
				</div>
				<div class="col-md-6 contact-top">
					<h3>Liên hệ với chúng tôi!</h3>
						<div>
							<span>Họ và tên</span>		
							<input type="text" value="">						
						</div>
						<div>
							<span>Email</span>		
							<input type="text" value="">						
						</div>
						<div>
							<span>Tiêu đề</span>		
							<input type="text" value="">	
						</div>
						<div>
							<span>Lời nhắn</span>		
							<textarea> </textarea>	
						</div>
						<input type="submit" value="GỬI">	
				</div>
			<div class="clearfix"> </div>
		</div>
	</div>
         <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

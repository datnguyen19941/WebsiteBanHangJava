<%-- 
    Document   : Register
    Created on : Jun 29, 2017, 10:36:36 PM
    Author     : Admin1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER</title>
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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"  type="text/javascript"></script>  
                  <script type="text/javascript">  
                        $(document).ready(function () {  
                             var x_timer;  
                             $("#email").keyup(function (e) {  
                                  clearTimeout(x_timer);  
                                  var user_name = $(this).val();  
                                  x_timer = setTimeout(function () {  
                                      check_username_ajax(user_name);  
                                  }, 1000);  
                                  });  
                             function check_username_ajax(username) {   
                                  $("#user-result").html('<img src="images/ajax-loader.gif" />');  
                                  $.post('CheckMail', {'username': username}, function (data) {  
                                      $("#user-result").html(data);  
                                   });  
                             }  
                         });   
                  </script>  
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        

       
      
        <div class="container">
		<div class="account">
			<h2 class="account-in">ĐĂNG KÍ TÀI KHOẢN</h2>
                        <form  action="UsersServlet" method="POST">
				
				<div class="account-in">
					<span>Họ và Tên (*)</span>
					<input type="text" required="yes" maxlength="50" name="name">
				</div> 	
				<div class="account-in">			
                                    <span>Email (*)</span>
					<input type="text" maxlength="50" name="email" id="email">
                                        <span id="user-result"></span>
                                        
				</div>			
				<div class="account-in"> 	
					<span>Mật khẩu (*)</span>
					<input type="password" required="yes" maxlength="50" name="password">
				</div>
				<div class="account-in"> 
					<span>Xác nhận lại mật khẩu (*)</span>
					<input type="password" required="yes" maxlength="50" name="repassword"></div>
				<div class="account-in">	
                                        <input type="hidden" value="insert" name ="command"> 
                                        <input type="submit" value="Đăng Kí"> </div>
				</form>
		</div>
	</div>
		
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

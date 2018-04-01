<%-- 
    Document   : Index
    Created on : Jun 29, 2017, 11:17:43 PM
    Author     : Admin1
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>XXMOBILE.COM</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>XXMOBILE.COM</title>

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
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>
        <%
            ProductDAO productDAO=new ProductDAO();
           
            
            Cart cart = (Cart)session.getAttribute("cart");
            if(cart == null )
            {
                cart = new Cart();
                session.setAttribute("cart",cart);
            }
            
            
             ArrayList<Product> listProduct = productDAO.getListProductByNew();
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="banner.jsp"></jsp:include>
            <div class="container">
                <div class="content">
                  <jsp:include page="NewPhone.jsp"></jsp:include>
                    

                      
                    <!---->
                    <div class="content-bottom"> <div class="future"> 
                            <h3 class="bn-catalog-title">THƯƠNG HIỆU</h3></div>
                        <div class="content-bottom-in">
                            <ul id="flexiselDemo1">			
                                <li><img src="images/ap.png"/></li>
                                <li><img src="images/ap1.png"/></li>
                                <li><img src="images/ap2.png"/></li>
                                <li><img src="images/ap3.png"/></li>
                                <li><img src="images/ap4.png"/></li>
                                <li><img src="images/ap5.png"/></li>
                                <li><img src="images/ap6.png"/></li>
                                <li><img src="images/ap7.png"/></li>
                                <li><img src="images/ap8.png"/></li>
                                <li><img src="images/ap9.png"/></li>
                                <li><img src="images/ap10.png"/></li>
                            </ul>
                            <script type="text/javascript">
                                $(window).load(function () {
                                    $("#flexiselDemo1").flexisel({
                                        visibleItems: 4,
                                        animationSpeed: 1000,
                                        autoPlay: true,
                                        autoPlaySpeed: 3000,
                                        pauseOnHover: true,
                                        enableResponsiveBreakpoints: true,
                                        responsiveBreakpoints: {
                                            portrait: {
                                                changePoint: 480,
                                                visibleItems: 1
                                            },
                                            landscape: {
                                                changePoint: 640,
                                                visibleItems: 2
                                            },
                                            tablet: {
                                                changePoint: 768,
                                                visibleItems: 3
                                            }
                                        }
                                    });

                                });
                            </script>
                            <script type="text/javascript" src="js/jquery.flexisel.js"></script>

                        </div>

                    </div></div>
                <!---->

            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

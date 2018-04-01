<%-- 
    Document   : header
    Created on : Jun 29, 2017, 10:15:55 PM
    Author     : Admin1
--%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.Users"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HEADER</title>
        <script>(function(d, s, id) 
            {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=134810803766630";
                fjs.parentNode.insertBefore(js, fjs);
             }
                (document, 'script', 'facebook-jssdk'));
        </script>
    </head>
    <body>
        <%             
            CategoryDAO categoryDAO = new CategoryDAO(); 
            Users users = null ;
            if(session.getAttribute("user") !=null)
            {
                users = (Users)session.getAttribute("user");
            }
        %>  
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if(cart == null)
            {
                cart = new Cart();
                session.setAttribute("cart",cart);
                
            }
         %>
        <!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="Index.jsp"><img src="http://images.samsung.com/is/image/samsung/p5/ie/home/ph_720x750.png?$ORIGIN_PNG$" height="100"  alt=" " ></a>
				</div>
				<div class="header-in">
					<ul class="icon1 sub-icon1">
                                            <%if(users!=null)
                                                {
                                                    %> <li ><a href="wishlist.html"><%=users.getEmail()%></a> </li>
                                                    <%}%>
                                                        
							
							<li  ><a href="/Quan_Ly_Ban_Hang/AdminCP/login.jsp">ADMIN</a></li>
                                                        
							<li ><a href="#" >GIỎ HÀNG</a></li>
							<li > <a href="checkout.jsp" >THANH TOÁN</a> </li>	
							<li><div class="cart">
									<a href="#" class="cart-in"> </a>
									<span><%=cart.countItem()%></span>
                                                                        
								</div>
								<ul class="sub-icon1 list">
						  <h3>Hàng trong giỏ</h3>
						  <div class="shopping_cart">
                                                      <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%> 
							  <div class="cart_box">
							   	 <div class="message">
							   	     <div class="alert-close"><a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"> </div> 
					                <div class="list_img"><img src="<%=list.getValue().getProduct().getProductImage()%>" class="img-responsive" alt=""></div>
								    <div class="list_desc"><h4><a href="#"> <%=list.getValue().getProduct().getProductName()%></a></h4>
                                                                    <%=list.getValue().getQuantity()%> x<span class="actual"> $ <%=list.getValue().getProduct().getProductPrice()%></span>
                                                                    
                                                                    </div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                            <%}%>  
	                        </div>
	                        <div class="total">
	                        	<div class="total_left">Tổng tiền: </div>
	                        	<div class="total_right">$ <%=cart.total()%></div>
	                        	<div class="clearfix"> </div>
	                        </div>
                            <div class="login_buttons">
							  <div class="check_button"><a href="checkout.jsp">Thanh Toán</a></div>
							  <div class="clearfix"></div>
						    </div>
					      <div class="clearfix"></div>
						</ul>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="Index.jsp"><i> </i>TRANG CHỦ</a></li>
					<li ><a href="#" >SẢN PHẨM</a>
						<ul class="drop">
                                                    <% 
                                                        for (Category c : categoryDAO.getListCategory()){
                                                    %>
                                                    <li><a href="Product.jsp?categoryID=<%=c.getCategoryID()%>&pages=1"><%=c.getCategoryName()%></a></li>
                                                    <%
                                                        }
                                                    %>
                                                    
                                                    
						</ul>
						</li> 						
					
						
						<li><a href="Contact.jsp" >Liên hệ</a></li>
                                                <li><a href="Login.jsp" >Đăng Nhập</a></li> 
                                                
                                                
					
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
			<div class="header-bottom-on">
			<p class="wel"><a href="Register.jsp">Bạn chưa có tài khoản. Đăng kí ngay!</a></p>
			<div class="header-can">
				
					
					<div class="search">
						<form>
							<input type="text" value="Tìm kiếm" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
							<input type="submit" value="">
						</form>
					</div>

					<div class="clearfix"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>
    </body>
</html>

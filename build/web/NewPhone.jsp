<%-- 
    Document   : NewPhone
    Created on : Jul 5, 2017, 7:08:54 PM
    Author     : TUANLIEM-PC
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        

       
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
        
            
               
                    <div class="content-top"> <div class="future">
                            <h3 class="bn-catalog-title">ĐIỆN THOẠI MỚI</h3></div>
                        <div class="content-top-in">
                            <%
                                            for (Product p : listProduct ){
                                        %>
                            <div class="col-md-3 md-col">
                                <div class="col-md">
                                   <a href="Single.jsp?product=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt="<%=p.getProductName()%>"/></a>	
                                    <div class="top-content">
                                        <h5><a href="Single.jsp?product=<%=p.getProductID()%>"><%=p.getProductName()%></a></h5>
                                        <div class="white">
                                            <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">THÊM VÀO GIỎ</a>
                                            <p class="dollar"><span class="in-dollar"><%=p.getProductPrice()%></span><span>VND</span></p>
                                            <div class="clearfix"></div>
                                        </div>

                                    </div>							
                                </div>
                            </div><%}%>
                            
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    
    </body>
</html>


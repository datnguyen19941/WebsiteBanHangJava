<%-- 
    Document   : manager_bill
    Created on : Jul 2, 2017, 10:11:05 PM
    Author     : TUANLIEM-PC
--%>
<%@page import="model.Product"%>"
<%@page import="java.util.ArrayList"%>"
<%@page import="dao.ProductDAO"%>"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUẢN LÝ SẢN PHẨM</title>
       <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/admincp.css" rel='stylesheet' type='text/css' /> 
       <link href="${root}/css/menu.css" rel='stylesheet' type='text/css'/> 
       
    </head>
    <body>
        <%
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> listProduct = productDAO.getListProduct();
            %>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
            <div id="rightContent">
	<h3>QUẢN LÝ SẢN PHẨM</h3>
        <button><a href="insert_product.jsp">Thêm sản phẩm</a></button>
        
		<table class="data">
			<tr class="data">
				<th class="data" width="30px">TT</th>
				<th class="data">Mã SP</th>
                                <th class="data">Mã Danh mục</th>
				<th class="data">Tên SP</th>
				<th class="data">Đơn giá</th>
                                <th class="data">Mô tả</th>
                                <th class="data">Hình ảnh</th>
				<th class="data" width="75px">Hành động</th>
			</tr>
                <%
                    int count = 0;
                    for(Product product : listProduct){
                        count++;
                    %>
			<tr class="data">
				<td class="data" width="30px"><%=count%></td>
				<td class="data"><%=product.getProductID()%></td>
                                <td class="data"><%=product.getCategoryID()%></td>
				<td class="data"><%=product.getProductName()%></td>
				<td class="data"><%=product.getProductPrice()%></td>
                                <td class="data"><%=product.getProductDescription()%></td>
                                <td class="data"><img width="75px" height="auto" src="<%=product.getProductImage()%>" alt="<%=product.getProductName()%>"></td>
				<td class="data" width="90px">
				<center>
				<a href="${root}/AdminCP/update_product.jsp?command=update&product_id=<%=product.getProductID()%>&product_name=<%=product.getProductName()%>&product_price=<%=product.getProductPrice()%>&product_image=<%=product.getProductImage()%>&product_des=<%=product.getProductDescription()%>">Sửa</a>&nbsp;&nbsp;&nbsp;
                                <a href="/Quan_Ly_Ban_Hang/ManagerProductServlet?command=delete&product_id=<%=product.getProductID()%>">Xóa</a>
				</center>
				</td>
			</tr>
			<%}%>
		</table>
	</div>
           
      
    </body>
</html>

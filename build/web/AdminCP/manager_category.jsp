<%-- 
    Document   : manager_category
    Created on : Jul 2, 2017, 6:09:06 PM
    Author     : TUANLIEM-PC
--%>
<%@page import="model.Category"%>"
<%@page import="java.util.ArrayList"%>"
<%@page import="dao.CategoryDAO"%>"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUẢN LÝ DANH MỤC</title>
       <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/admincp.css" rel='stylesheet' type='text/css' /> 
       <link href="${root}/css/menu.css" rel='stylesheet' type='text/css'/> 
       <%
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getListCategory();
            %>
    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
            <div id="rightContent">
	<h3>QUẢN LÝ DANH MỤC</h3>
        <a href="insert_category.jsp">Thêm danh mục</a>
        
		<table class="data">
			<tr class="data">
				<th class="data" width="30px">TT</th>
				<th class="data">Mã danh mục</th>
				<th class="data">Tên danh mục</th>
				
				<th class="data" width="75px">Hành động</th>
			</tr>
                <%
                    int count = 0;
                    for(Category category : listCategory){
                        count++;
                    %>
			<tr class="data">
				<td class="data" width="30px"><%=count%></td>
				<td class="data"><%=category.getCategoryID()%></td>
				<td class="data"><%=category.getCategoryName()%></td>
				
				<td class="data" width="90px">
				<center>
				<a href="${root}/AdminCP/update_category.jsp?command=update&category_id=<%=category.getCategoryID()%>&category_name=<%=category.getCategoryName()%>">Sửa</a>&nbsp;&nbsp;&nbsp;
                                <a href="/Quan_Ly_Ban_Hang/ManagerCategoryServlet?command=delete&category_id=<%=category.getCategoryID()%>">Xóa</a>
				</center>
				</td>
			</tr>
			<%}%>
		</table>
	</div>
           </div>
      
    </body>
</html>

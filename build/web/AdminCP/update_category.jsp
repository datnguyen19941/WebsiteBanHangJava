<%-- 
    Document   : update_category
    Created on : Jul 2, 2017, 11:59:40 PM
    Author     : TUANLIEM-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CẬP NHẬT DANH MỤC</title>
       <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/admincp.css" rel='stylesheet' type='text/css' />
       <link href="${root}/css/menu.css" rel='stylesheet' type='text/css'/> 
    </head>
    <body>
        <%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
            %>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
            <div id="rightContent">
	<h3>CẬP NHẬT DANH MỤC</h3>
        <form action="/Quan_Ly_Ban_Hang/ManagerCategoryServlet" method="post">
       
	
		<table width="95%">
			<tr><td width="125px"><b>Tên danh mục</b></td><td>
                                <input type="text" value="<%=request.getParameter("category_name")%>" name="tendanhmuc"><%=error%> </td></tr>
			
			
			<tr><td></td><td>
			<input type="hidden" name="command" value="update">
                        <input type="hidden" name="category_id" value="<%=request.getParameter("category_id")%>">
			<input type="submit" class="button" value="Lưu dữ liệu">
			
			</td></tr>
		</table>
	</div>
<div class="clear"></div>
    </body>
</html>

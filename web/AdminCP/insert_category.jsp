<%-- 
    Document   : insert_category
    Created on : Jul 2, 2017, 10:22:27 PM
    Author     : TUANLIEM-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THÊM DANH MỤC</title>
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
	<h3>THÔNG TIN DANH MỤC</h3>
        <form action="/Quan_Ly_Ban_Hang/ManagerCategoryServlet" method="post">
       
	
		<table width="95%">
			<tr><td width="125px"><b>Thêm mới danh mục</b></td><td>
                                <input type="text" name="tendanhmuc"><%=error%> </td></tr>
			
			
			<tr><td></td><td>
			<input type="hidden" name="command" value="insert">
			<input type="submit" class="button" value="Thêm danh mục">
			
			</td></tr>
		</table>
        </form>
	</div>
<div class="clear"></div>
    </body>
</html>

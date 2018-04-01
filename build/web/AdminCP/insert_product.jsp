<%-- 
    Document   : insert_category
    Created on : Jul 2, 2017, 10:22:27 PM
    Author     : TUANLIEM-PC
--%>
<%@page import="model.Category"%>"
<%@page import="java.util.ArrayList"%>"
<%@page import="dao.CategoryDAO"%>"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/admincp.css" rel='stylesheet' type='text/css' />
        <link href="${root}/css/menu.css" rel='stylesheet' type='text/css'/> 
        <script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<script>
     $(document).ready(function(){
           $("#department").val("${requestScope.selectedDepartment}").attr('selected', 'selected');
     });
     </script>
    </head>
    <body>
<%
        String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getListCategory();
            %>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>THÔNG TIN SẢN PHẨM</h3>
 <form action="/Quan_Ly_Ban_Hang/ManagerProductServlet" method="post">
                    <table width="95%">
                        <tr><td><b>Tên sản phẩm</b></td><td><input type="text" name="tensanpham" class="sedang"><%=error%></td></tr>
                        <tr><td><b>Giá bán</b></td><td><input type="text" name="giaban" class="sedang"><%=error%></td></tr>
                        <tr><td><b>Loại sản phẩm</b></td><td>
                                <select name="danhmuc">
                                    <option selected>-- Chọn danh mục sản phẩm --</option>
                                    <%
                    int count = 0;
                    for(Category category : listCategory){
                        count++;
                    %>
                                    <option value="<%=category.getCategoryID()%>"><%=category.getCategoryName()%></option>
                                    <%}%>
                                </select>
                            </td></tr>
                        <tr><td><b>Mô tả sản phẩm</b></td>
                            <td>
                                <textarea class="form-textarea" id="noiDung" name="noiDung"></textarea>
                                <script type="text/javascript" language="javascript">
                                   CKEDITOR.replace('noiDung', {width: '90%',height: '300px'});
                                </script>
                            </td>
                        </tr>
                        <tr><td><b>Hình ảnh</b></td><td><input type="file" name="hinhanh"></td></tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="insert">
			<input type="submit" class="button" value="Thêm sản phẩm">
                            </td></tr>
                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


<div class="clear"></div>
    </body>
</html>

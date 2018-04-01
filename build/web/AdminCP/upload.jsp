<%-- 
    Document   : upload
    Created on : Jul 3, 2017, 3:35:40 PM
    Author     : TUANLIEM-PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN CONTROL PANEL</title>
       <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/admincp.css" rel='stylesheet' type='text/css'/> 
       <link href="${root}/css/menu.css" rel='stylesheet' type='text/css'/> 
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
             <div id="rightContent">
	<h3>TẢI HÌNH ẢNH LÊN MÁY CHỦ</h3>
             <center>
        <form method="post" action="/Quan_Ly_Ban_Hang/UploadServlet" enctype="multipart/form-data">
            Chọn file cần tải lên:
            <input type="file" name="uploadFile" />
            <br/><br/>
            <input type="submit" class="button" value="Upload" />
        </form>
             </center></div>
          <div class="clear"></div>  
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>



   

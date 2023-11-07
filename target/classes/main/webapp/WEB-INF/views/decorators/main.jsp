<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Timtrotot</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<c:url value="/templates/css/app.css"/>" rel="stylesheet" >
    <link href="<c:url value="/templates/css/mainTemp.css"/>" rel="stylesheet" >
    <link href="<c:url value="/templates/css/detail.css"/>" rel="stylesheet">


    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
<%@ include file="/WEB-INF/views/common/main/header.jsp"%>
    <sitemesh:write property='body'></sitemesh:write>
<%@ include file="/WEB-INF/views/common/user/footer.jsp"%>

<%--<script src="<c:url value="/templates/js/script.js"/>"></script>--%>
<%--<script src="<c:url value="/templates/js/pro.js"/>"></script>--%>
<%--<script src="<c:url value="/templates/js/detail.js"/>"></script>--%>
<%--<script src="<c:url value="/templates/js/create.js"/>"></script>--%>
<script src="<c:url value="/templates/js/pagination_main.js"/>"></script>
</body>

</html>
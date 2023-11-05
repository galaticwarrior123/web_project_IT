<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="article" value="1"> </c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Timtrotot</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<c:url value="/templates/css/app.css"/>" rel="stylesheet">
    <link href="<c:url value="/templates/css/mainTemp.css"/>" rel="stylesheet">
    <link href="<c:url value="/templates/css/detail.css"/>" rel="stylesheet">
    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
        .error{
            color: red;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/common/user/header.jsp"%>
<div class="container">
    <div class="container-fluid">
        <div class="row">
            <nav class="sidebar">
                <div class="user_info">
                    <a href="#">
                        <div class="user_avatar"><img src="/src/public/img/account.png" width="200" height="200"></div>
                        <div class="user">
                            <div class="inner">
                                <div class="user_name">Name</div>
                                <div class="user_verify" style="color: #555; font-size: 0.9rem;">XXXXXXXXXXX</div>
                            </div>
                        </div>
                    </a>
<%--                    <ul>--%>
<%--                        <li><span>Mã thành viên:</span> <span style="font-weight: 700;"> XXXXXX</span></li>--%>
<%--                        <li><span>TK Chính:</span> <span style="font-weight: 700;"> XXXXXX</span></li>--%>
<%--                    </ul>--%>

                </div>
                <ul class="nav-nav-sidebar">
                    <li class="nav-item post_news_btn highLight">
                        <a class="nav-link" href="http://localhost:2003/user/article/InsertArticle">
                            <i class=material-icons>note</i>
                            Đăng tin
                        </a>
                    </li>
                    <li class="nav-item manage_post_btn">
                        <a class="nav-link" href="/user/article/check_1">
                            <i class=material-icons>description</i>
                            Quản lý tin đăng
                        </a>
                    </li>
                    <li class="nav-item fix_info_author_btn">
                        <a class="nav-link" href="/user/article/update_check1">
                            <i class=material-icons>edit</i>
                            Sửa thông tin cá nhân
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/check">
                            <i class=material-icons>logout</i>
                            Thoát
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="main">
            <sitemesh:write property='body'></sitemesh:write>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/common/user/footer.jsp"%>



<script src="<c:url value="/templates/js/create.js"/>"></script>
<script src="<c:url value="/templates/js/pagination_listArticle.js"/>"></script>
<script src="<c:url value="/templates/js/header_user.js"/>"></script>
</body>

</html>
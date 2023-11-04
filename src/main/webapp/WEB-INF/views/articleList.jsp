
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<% String username = Long.toString((Long) request.getSession().getAttribute("id")); %>--%>
<%--<% String username1 = (String)request.getSession().getAttribute("USERNAME"); %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Insert title here</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<p>Hello <%=username1 %></p>--%>
<%--<h1>Article List</h1>--%>
<%--<table border="1">--%>
<%--    <tr>--%>
<%--        <td>ID</td>--%>
<%--        <td>Name</td>--%>
<%--        <td>Type</td>--%>
<%--        <td>Area</td>--%>
<%--        <td>Location</td>--%>
<%--        <td>Description</td>--%>
<%--        <td>Image</td>--%>
<%--        <td>Action</td>--%>
<%--    </tr>--%>
<%--    <c:forEach var ="i" items = "${articles}">--%>
<%--        <tr>--%>
<%--            <td>${i.getArticleId()}</td>--%>
<%--            <td>${i.getSubject()}</td>--%>
<%--            <td>${i.getArticleTypeId()}</td>--%>
<%--            <td>${i.getAreaId()}</td>--%>
<%--            <td>${i.getLocation()}</td>--%>
<%--            <td>${i.getDescription()}</td>--%>
<%--&lt;%&ndash;            <td>${i.getImages()}</td>&ndash;%&gt;--%>
<%--            <td><img src='<c:url value = "/image?fname=articles/${i.getImages()}"/>' width="100px"></td>--%>
<%--            <td>--%>
<%--                <a href ="../changeArticleType/${i.getArticleId()}">Modify</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>
<%--&lt;%&ndash;<a href="../../users"> Back to UserList</a>&ndash;%&gt;--%>
<%--<a href ="../../article/InsertArticle"> Add new Article</a>--%>
<%--<a href ="/users/updateUser/<%=username %>">Update Information</a>--%>
<%--</body>--%>
<%--</html>--%>

<%-- --------------------------------------------------------------   --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<% String username = Long.toString((Long) request.getSession().getAttribute("id")); %>--%>
<%--<% String username1 = (String)request.getSession().getAttribute("USERNAME"); %>--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body >

<div class="manage_post">
    <div class="manage_post_nav">
        <div class="manage_post_title">
            <h2 style="margin-top: 0">Quản lý tin đăng</h2>
        </div>
        <div class="manage_post_body">
            <c:forEach var="i" items="${articles}">
                <div class="manage_post_body_item">
                    <div class="manage_post_body_item_detail">
                        <div class="manage_post_body_item_image">
                            <img src='<c:url value = "/image?fname=articles/${i.getImages()}"/>' width="100px">
                        </div>
                        <div class="manage_post_body_item_info">
                            <div class="manage_post_body_item_info_title">
                                <h3>${i.getSubject()}</h3>
                            </div>
                            <div class="manage_post_body_item_info_detail">
                                <p>${i.getDescription()}</p>
                                <p>${i.getLocation()}</p>
                            </div>
                        </div>
                    </div>

                    <div class="manage_post_body_item_info_action">

                        <a href="../UpdateArticle/${i.getArticleId()}" class="btn-primary">Sửa</a>
                        <form:form method="post"
                                   action="/user/article/DeleteArticle/${i.getArticleId()}"
                                   onsubmit="return confirm('Sure?')? true:false">
                            <input type="submit" value="Xóa" class="btn-danger">
                        </form:form>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="manage_post_list_pagination">
        <button class="manage_post_list_pagination_btn_action prev">« Trước</button>
        <ul class="manage_post_list_pagination_btn">
            <li class="manage_post_list_btn">1</li>
        </ul>
        <button class="manage_post_list_pagination_btn_action next">Sau »</button>
    </div>
</div>


</body>
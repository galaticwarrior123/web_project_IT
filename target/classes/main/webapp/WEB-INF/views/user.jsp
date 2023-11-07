<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String username = (String)request.getSession().getAttribute("USERNAME"); %>
<%--String username=(String)session.getAttribute("uid");--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
</head>
<body>
<p>Hello <%=username %></p>
<a href=""></a>
<h1>User List</h1>
<table border="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Phone Number</td>
        <td>Image</td>
        <td>Action</td>
    </tr>
    <c:forEach var ="i" items = "${users}">
        <tr>
            <td>${i.getUserId()}</td>
            <td>${i.getName()}</td>
            <td>${i.getPhoneNumber()}</td>
            <td>${i.getImage()}</td>
            <td>
                <a href ="article/getArticlesByUser/${i.getUserId()}"> Show Article</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href ="article/InsertArticle"> Add new Article</a>
<a href ="logout"> Log out</a>

<%--//localhost:8080/article/getArticlesByUser/1--%>
</body>
</html>
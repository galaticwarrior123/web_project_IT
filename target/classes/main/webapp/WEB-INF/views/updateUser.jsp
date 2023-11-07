<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% String username = (String)request.getSession().getAttribute("USERNAME"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body>

<div class="fix_information_author">
    <form:form class="fix_information_author_body"
          action = "/user/article/UpdateUser/${user.getUserId()}"
          modelAttribute="user"
          enctype="multipart/form-data"
          method="post">
        <div class="fix_information_author_title">
            <h2 style="margin-top: 0">Sửa thông tin cá nhân</h2>
        </div>
        <div class="fix_information_author_body_item">
            <div class="fix_information_author_body_item_detail">
                <label >Tên</label>
                <form:input type="text" path="name" value="${user.getName()}"  placeholder="Nhập tên" />
            </div>
        </div>
<%--        <div class="fix_information_author_body_item">--%>
<%--            <div class="fix_information_author_body_item_detail">--%>
<%--                <label >Số điện thoại</label>--%>
<%--                <form:input type = "text" path = "passwd" value = "${user.getPassWord()}"/>--%>
<%--            </div>--%>
<%--        </div>--%>

        <div class="fix_information_author_body_item">
            <div class="fix_information_author_body_item_detail">
                <label >Mật khẩu</label>
                <form:input type = "text" path = "passWord" value = "${user.getPassWord()}"/>
            </div>
        </div>

        <div class="fix_information_author_body_item">
            <div class="fix_information_author_body_item_detail">
                <label >Ảnh đại diện</label>
                <input type = "file" name = "image"/>
            </div>
        </div>
        <div class="fix_information_author_body_item">
            <input type="submit" value="Thay đổi thông tin" class="btn-danger">
        </div>

    </form:form>
</div>

</body>
</html>
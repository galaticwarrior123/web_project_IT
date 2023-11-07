<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>

<div class="form-box register">
    <form:form action="/register2" method="post"
               modelAttribute="user" enctype="multipart/form-data">
        <h2>Đăng ký</h2>

        <div class="input-box">
            <span class="icon"><i class='bx bxs-user'></i></span>
            <form:input type="text" path="name" placeholder="Tên"/>

        </div>

        <div class="input-box">
            <span class="icon"><i class='bx bxs-phone-call'></i></span>
            <form:input type="text" path="phoneNumber" placeholder="SĐT"/>

        </div>

        <div class="input-box">
            <input type="file" name="image" placeholder="Thêm ảnh đại diện"/>

        </div>

        <div class="input-box">
            <span class="icon"><i class='bx bxs-lock-alt'></i></span>
            <form:input type="password" path="passWord" placeholder="Mật khẩu"/>

        </div>


        <div class="remember-forgot">
            <label><input type="checkbox">Tôi đồng ý với những điều khoản & điều kiện</label>
        </div>

        <input type="submit" class="btn" value="Đăng ký">


        <div class="login-register">
            <p>Bạn đã có tài khoản? <a href="/login/login" class="login-link">Đăng nhập</a></p>
        </div>

        <div class="login-register-exit">
            <p><a href="/">Trở lại</a></p>
        </div>

    </form:form>
</div>


</body>

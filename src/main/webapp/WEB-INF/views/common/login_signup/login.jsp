<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<body>
<div class="form-box login">
    <form action="/login/checklogin" method="post">
        <h2>Đăng nhập</h2>

        <div class="input-box">
            <span class="icon"><i class='bx bxs-phone-call'></i></span>
            <input type="text" required name="username">
            <label>SĐT</label>
        </div>

        <div class="input-box">
                        <span class="icon">
                            <i class='bx bxs-lock-alt'></i>
                        </span>
            <input type="password" required name="password">
            <label>Mật khẩu</label>
        </div>

        <div class="remember-forgot">
            <label><input type="checkbox">Ghi nhớ đăng nhập</label>
            <a href="/login/fill_phone">Quên mật khẩu?</a>
        </div>

        <p class="error">${ERROR}</p>

        <input type="submit" class="btn" value="Đăng nhập">

        <div class="login-register">
            <p>Bạn chưa có tài khoản? <a href="/register/" class="register-link">Đăng ký</a></p>
        </div>
        <div class="login-register-exit">
            <p><a href="/">Trở lại</a></p>
        </div>
    </form>
</div>

</body>
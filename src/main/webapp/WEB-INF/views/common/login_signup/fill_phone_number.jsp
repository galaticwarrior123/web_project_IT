<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
<div class="form-box forgot">
    <form action="#">
        <h2>Quên mật khẩu</h2>
        <p>Vui lòng nhập số điện thoại để tìm lại tài khoản của bạn</p>

        <div class="input-box">
            <span class="icon"><i class='bx bxs-phone-call' ></i></span>
            <input type="text" required>
            <label>SĐT</label>
        </div>

        <button type="submit" class="btn">Tìm</button>

<%--        <div class="btn1" style="width:100px; height:50px; background-color: brown; ">--%>
<%--            <p>Tìm</p>--%>
<%--        </div>--%>

        <div class="login-register">
            <p>Bạn đã có tài khoản? <a href="#"class="login-link">Đăng nhập</a></p>
        </div>

        <div class="phonenumber-OTP">
            <p>Vào đây coi trang OPT nha <a href="/login/fill_otp" class="otp-link">OTP</a></p>
        </div>

    </form>
</div>
</body>

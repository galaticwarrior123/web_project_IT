

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="form-box OTP">
    <form action="#">
        <h2>Nhập mã OTP</h2>
        <p>Mã OTP đã được gửi đến số điện thoại bạn.</p>
        <p>Vui lòng nhập OTP để xác thực.</p>

        <div class="input-box">
            <span class="icon"><i class='bx bxs-badge-check'></i></span>
            <input type="text" required>
            <label>Mã OTP</label>
        </div>

        <div class="phonenumber-OTP">
            <p>Nhập SĐT khác? <a href="#"class="forgot-link">Nhập lại SĐT</a></p>
        </div>

    </form>
</div>
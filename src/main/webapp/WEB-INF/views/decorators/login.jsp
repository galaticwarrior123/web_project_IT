<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en" class="mdl-js">

<head>
    <!-- <title>Đăng nhập</title> -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="<c:url value="/templates/css/style.css"/>" >
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .error {
            color: red;
        }
    </style>
</head>

<body>

<div class="background"></div>

<div class="container">

    <div class="content">
        <h2 class="logo"><i class='bx bxl-firebase'></i>Nhóm 4</h2>

        <div class="text-sci">
            <h2>Chào mừng!<br><span>Đến Với Timtrotot</span></h2>

            <p>Tại đây các bạn có thể tìm thấy những nơi ở phù hợp với nhu cầu và túi tiền của mỗi người. Hy vọng
                chúng tôi có thể giúp các bạn tìm được những căn phòng tốt nhất.</p>

            <div class="social-icons">
                <a href="#"><i class='bx bxl-linkedin'></i></a>
                <a href="#"><i class='bx bxl-facebook'></i></a>
                <a href="#"><i class='bx bxl-instagram'></i></a>
                <a href="#"><i class='bx bxl-gmail'></i></a>
            </div>
        </div>
    </div>

    <!-- Tạo 1 cái logreg-box để làm cái khung chung cho form-box login và form-box register -->
    <div class="logreg-box">
        <sitemesh:write property="body"> </sitemesh:write>
<%--        <div class="form-box login">--%>
<%--            <form action="/login/checklogin" method="post">--%>
<%--                <h2>Đăng nhập</h2>--%>

<%--                <div class="input-box">--%>
<%--                    <span class="icon"><i class='bx bxs-phone-call'></i></span>--%>
<%--                    <input type="text" required name="username">--%>
<%--                    <label>SĐT</label>--%>
<%--                </div>--%>

<%--                <div class="input-box">--%>
<%--                        <span class="icon">--%>
<%--                            <i class='bx bxs-lock-alt'></i>--%>
<%--                        </span>--%>
<%--                    <input type="password" required name="password">--%>
<%--                    <label>Mật khẩu</label>--%>
<%--                </div>--%>

<%--                <div class="remember-forgot">--%>
<%--                    <label><input type="checkbox">Ghi nhớ đăng nhập</label>--%>
<%--                    <a href="/login/fill_phone">Quên mật khẩu?</a>--%>
<%--                </div>--%>

<%--                <p class="error">${ERROR}</p>--%>

<%--                <input type="submit" class="btn" value="Đăng nhập">--%>

<%--                <div class="login-register">--%>
<%--                    <p>Bạn chưa có tài khoản? <a href="/register/" class="register-link">Đăng ký</a></p>--%>
<%--                </div>--%>
<%--                <div class="login-register-exit">--%>
<%--                    <p><a href="/">Trở lại</a></p>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
    </div>
</div>
</body>
</html>
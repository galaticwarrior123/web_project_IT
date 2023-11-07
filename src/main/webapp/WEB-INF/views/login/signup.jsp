<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<body>
<div class="form_login register">
    <h4>Đăng ký</h4>
    <form>
        <div class="mb-3">
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Email/Số điện thoại">
        </div>
        <div class="mb-3">
            <div class="mb-3-password reg">
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Mật khẩu">
                <div class="signup_input_show">
                    <i class='bx bx-show-alt'></i>
                </div>
                <div class="signup_input_hidden">
                    <i class='bx bx-low-vision'></i>
                </div>
            </div>
        </div>
        <div class="mb-3">
            <div class="mb-3-password re-reg">
                <input type="password" class="form-control" id="exampleInputPassword1"
                       placeholder="Nhập lại mật khẩu">
                <div class="signup_input_show-re-reg">
                    <i class='bx bx-show-alt'></i>
                </div>
                <div class="signup_input_hidden-re-reg">
                    <i class='bx bx-low-vision'></i>
                </div>
            </div>
            <div class="form-login-btn">
                <button type="submit" class="btn btn-primary">Đăng ký</button>
            </div>
            <div class="mb-3 form-check">
                <div class="tille-signup">
                    <p>HOẶC</p>
                </div>
                <div class="signup_social">
                    <a href="" class="btn btn-facebook"><i class="fa fa-facebook" aria-hidden="true"></i>
                        Facebook</a>
                    <a href="" class="btn btn-google"><i class="fa fa-google" aria-hidden="true"></i> Google</a>
                </div>
                <div class="signup_policy">
                    <p>Bằng việc đăng ký, bạn đã đồng ý với shop về
                        <a href="">Điều khoản dịch vụ</a> &
                        <a href="">Chính sách bảo mật</a>
                    </p>
                </div>
                <div class="signup_not_have_account">
                    <p>Bạn đã có tài khoản. Hãy đăng nhập
                        <a href="">tại đây</a>
                    </p>
                </div>

            </div>
        </div>
    </form>
</div>
</body>

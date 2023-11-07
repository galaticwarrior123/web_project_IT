<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="container">
    <div class="show_detail">
        <div class="col-lg-3">
            <div class="show_detail_image_btn">
                <button class="show_detail_image_btn_left"><i class='bx bx-chevron-left'></i></button>

            </div>
            <div class="show_detail_image">
                <img class="img_detail" src="/src/public/img/{{this}}" alt="">
            </div>
            <div class="show_detail_image_btn">

                <button class="show_detail_image_btn_right"><i class='bx bx-chevron-right'></i></button>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="show_detail_info">
                <h2 style="margin:0">Thông tin mô tả</h2>
                <div class="show_detail_info_body">
                    <p class="show_detail_info_body_1">
                        - Cho thuê phòng trọ 12m², có tolet trong phòng, kệ bếp, máy lạnh, , cửa sổ, ban công, thông thoáng, nhà mới làm</br>
                        - Giờ giấc tự do, không chung </br>
                        - Điện 3.5k/kw, nước 20k/m3, wifi 50k/phòng</br>
                        - Có khóa vân tay, nhà xe camera 24/24</br>
                        - Có chỗ để xe free</br>
                        - Gần đại học công nghiệp, Đh mở, cao đẳng bách việt, ....</br>
                        - Giá thuê : 3.3tr/ tháng, có thể ở dc 3 người</br>
                        - Địa chỉ: 226 nguyễn thái sơn,p4,gò vấp</br>
                        - Liên hệ: 0984252979</br>

                    </p>

                    <div class="show_detail_info_body_map">
                        <h3>Bản đồ</h3>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3918.065616559818!2d106.77888734677121!3d10.882613946067783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTDCsDUyJzU3LjQiTiAxMDbCsDQ2JzQ5LjIiRQ!5e0!3m2!1svi!2s!4v1697195492851!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>

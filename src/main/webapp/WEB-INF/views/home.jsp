<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<c:set var="temp" value="${0}" > </c:set>


<body >
<div class="container">
    <div class="container_nav">
        <div class="container_nav_tittle">
            <div class="container_nav_tittle_body">
                <h2 id="style_main">TÌM NHANH DỄ DÀNG</h2>
                <p id="style_sub">Home.com - Trang thông tin tra cứu và cho thuê phòng trọ đơn giản</p>
            </div>
        </div>
        <div class="container_nav_block_outer">
            <div class="container_nav_block_inner">
                <div class="container_nav_search_task">
                    <from:form action="" class="container_nav_search_task_table">
                        <input class="container_nav_search" type="text" placeholder="Tìm kiếm" id="search">
                        <button class="container_nav_btn_submit">
                            <i class='bx bx-search-alt-2'></i>
                    </from:form>
                </div>

                <div class="container_nav_options">
                    <ul class="container_nav_options_select">
                        <div class="option">
                            <button class="option_location" href="">
                                Địa điểm
                                <i class='bx bx-chevron-down'></i>
                            </button>

                            <div class="option_location_list_nocart">
                                <div class="option_location_list_nocart_body">
                                    <select class="option_select">

                                        <option value="">Phường 1</option>
                                        <option value="">Phường 2</option>
                                        <option value="">Phường 3</option>
                                        <option value="">Phường 4</option>
                                    </select>

                                    <select name="Đường" id="street" class="option_select"></select>

                                    <select name="Vị trí" id="location" class="option_select"></select>
                                </div>

                                <div class="option_location_list_action">
                                    <div class="option_location_list_action_btn">
                                        <a href="" class="option_price_list_action_btn_element">Tìm ngay</a>
                                    </div>
                                    <div class="option_location_list_action_btn">
                                        <a href="" class="option_price_list_action_btn_element">Đóng</a>
                                    </div>
                                </div>
                            </div>

                        </div>



                        <div class="option">
                            <button class="option_price">
                                Giá <i class='bx bx-chevron-down'></i>
                            </button>

                            <div class="option_price_list_nocart">
                                <div class="option_price_list_nocart_body">
                                    <ul>
                                        <li class="price_list"> Tất cả</li>
                                        <li class="price_list"> Dưới 1 triệu</li>
                                        <li class="price_list"> 1 triệu - 2 triệu</li>
                                        <li class="price_list"> 2 triệu - 3 triệu</li>
                                        <li class="price_list"> 3 triệu - 4 triệu</li>
                                        <li class="price_list"> 4 triệu - 5 triệu</li>
                                        <li class="price_list"> 5 triệu - 6 triệu</li>
                                        <li class="price_list"> Trên 6 triệu</li>
                                    </ul>
                                </div>
                                <div class="option_price_list_action">
                                    <div class="option_price_list_action_btn">
                                        <a href="" class="option_price_list_action_btn_element">Tìm ngay</a>
                                    </div>
                                    <div class="option_price_list_action_btn">
                                        <a href="#" class="option_price_list_action_btn_element">Đóng</a>
                                    </div>
                                </div>
                            </div>




                        </div>
                        <div class="option">
                            <button class="option_search" href="">Tìm kiếm</button>
                        </div>

                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="container_item">

        <!-- Them cac muc san pham  -->

        <div class="container_item_products">

            <ul class="container_item_btn_head">
                <span id="container_item_btn_head_p">Sắp xếp: </span>
                <div class="container_item_btn_head_1">
                    <a class="container_item_btn_head_1_1 " href="">Mặc định</a>
                </div>
                <div class="container_item_btn_head_1">
                    <a class="container_item_btn_head_1_1" href="">Mới nhất</a>
                </div>

            </ul>




            <div class="container_item_list_product">
                <div class="container_item_product">
                    <c:forEach var ="i" items = "${articles}">
                        <div class="container_item_product_info">
                            <div class="container_item_product_detail">

                                <figure class="container_item_product_detail_post_image">
                                    <a href="show/${i.getArticleId()}">
                                        <img class="container_item_product_img" src="/src/public/img/{{this.image.[0]}}" alt="">
                                    </a>
                                    <div class="container_item_product_detail_post_image_quantity">
                                        <span class="container_item_product_detail_post_image_count">1 ảnh</span>
                                    </div>
                                </figure>





                                <div class="container_item_product_detail_post_meta">


                                    <h3 class="container_item_product_detail_post_info_name">
                                        <a class="post_info_name_detail" href="show/${i.getArticleId()}">
                                            <p>${i.getSubject()}</p>
                                        </a>

                                    </h3>
                                    <div class="container_item_product_detail_post_info_price_acreage_add">
                                        <span class="post_info_price">${i.getPrice()}/tháng</span>
                                        <span class="post_info_add">${i.getLocation()}</span>
                                    </div>

                                    <div class="container_item_product_detail_info_describe">
                                        <span>${i.getDescription()}</span>
                                    </div>

                                    <div class="container_item_product_detail_post_mes">
                                        <div class="container_item_product_detail_post_mes_logo">
                                            <div class="container_item_product_detail_post_mes_logo_author">
                                                <img src="../../public/img/account.png" alt="">
                                            </div>
                                            <p class="post_user"> </p>
                                        </div>
                                        <div class="container_item_product_detail_post_mes_tel">
                                            <button class="container_item_product_detail_post_mes_tel_1">Gọi
                                                điện 0123456789</button>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>



            <div class="container_item_btn">
                <div class="container_item_btn_item_icon">
                    <button class="item_btn prev">« Trang trước</button>
                </div>
                <ul class="container_item_btn_listPage">
                    <li class="container_item_btn_item hightLight"></li>
                </ul>
                <div class="container_item_btn_item_icon">
                    <button class="item_btn next">Trang sau »</button>
                </div>
            </div>

        </div>


        <%--    <!-- Them cac muc lua chon khac -->--%>
        <div class="container_item_other">

            <section class="container_item_other_screen_hot_news">
                <span id="container_item_header">Tin mới đăng</span>
                <c:forEach var="i" items="${reverseArticle}">
                    <c:if test="${temp != 9}" >
                        <div class="container_item_other_screen_hot_news_list">
                            <ul class="container_item_other_screen_hot_news_list_pro">

                                <li class="container_item_other_screen_hot_news_list">
                                    <div class="container_item_other_screen_hot_news_list_sub">
                                        <a href="show/${i.getArticleId()}">
                                            <img class="container_item_other_hot_news_pic" src="/src/public/img/{{this.image}}"></img>
                                        </a>

                                        <div class="container_item_other_hot_news_info">

                                            <div class="post_tittle">
                                                <a href="show/${i.getArticleId()}">${i.getSubject()}</a>
                                            </div>

                                            <div class="post_dav">
                                                <span class="post_price">${i.getPrice()}/tháng</span>
<%--                                                <span class="post_time">1 giờ trước </span>--%>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <c:set var="temp" value="${temp+ 1}"> </c:set>
                    </c:if>

                </c:forEach>


            </section>
        </div>
    </div>
</div>
</body>

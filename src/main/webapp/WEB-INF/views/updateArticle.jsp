<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<body>
<body>
<div class="fix_post">
    <form:form action = "/user/article/UpdateArticle/${article.getArticleId()}"
               class="create_form_body"
               method="post"
               modelAttribute="article"
               enctype="multipart/form-data">
        <div class="create_form_title">
            <h2 style="margin-top: 0">Sửa thông tin</h2>
        </div>
        <div class="create_form_body_detail">
            <div class="create_form_body_item">
                <label>Tiêu đề</label>
                <form:input type = "text" path = "subject" value = "${article.getSubject()}" placeholder = "Nhập tiêu đề"/>
                <form:errors path = "subject" cssClass="error"/><br>
            </div>
            <div class="create_form_body_item">
                <label >Địa chỉ</label>
                <form:input type="text" path="location" value="${article.getLocation()}" placeholder="Nhập địa chỉ"/>
            </div>

            <div class="create_form_body_item">
                <label for="price">Giá</label>
                <form:input type="text" path="price" value="${article.getPrice()}" placeholder="Nhập giá"/>
            </div>
            <div class="create_form_body_item">
                <label>Hình ảnh</label>
                <input type = "file" name = "images" placeholder="Chọn hình ảnh" multiple>
            </div>
            <div class="create_form_body_item">
                <label >Mô tả</label>
                <form:textarea path="description"  cols="65" rows="10" value="${article.getDescription()}"
                               placeholder="Nhập mô tả"></form:textarea>
            </div>
            <div class="create_form_body_item " style="margin-top:10px">
                <label >Loại tin</label>
                <form:select path = "articleTypeId" >
                    <c:forEach items="${articleTypes}" var ="i">
                        <form:option value="${i.getArticleTypeId()}" >${i.getArticleTypeName()}</form:option>
                    </c:forEach>
                </form:select>
            </div>
            <div class="create_form_body_item " style="margin-top:10px">
                <label>Khu vuc: </label>
                <form:select path = "areaId" >
                    <c:forEach items="${areas}" var ="i">
                        <form:option value="${i.getArea_id()}" >${i.getArea_name()}</form:option>
                    </c:forEach>
                </form:select><br>
            </div>
            <input type="submit" value="Đồng ý" class="btn-danger">
<%--            <input type="submit" value="Hủy" class="btn-danger">--%>
        </div>
    </form:form>
</div>
</body>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body >
<div class="create_form">
    <form:form action="/user/article/InsertArticle2" class="create_form_body" method="post" enctype="multipart/form-data" modelAttribute="article">
        <div class="create_form_title">
            <h2 style="margin-top: 0">Đăng tin</h2>
        </div>
        <div class="create_form_body_detail">
            <div class="create_form_body_item">
                <label>Tiêu đề</label>
                <form:input type="text" path="subject"  placeholder="Nhập tiêu đề"/>
            </div>
            <div class="create_form_body_item">
                <label >Địa chỉ</label>
                <form:input type="text" path="location"  placeholder="Nhập địa chỉ"/>
            </div>
            <div class="create_form_body_item">
                <label >Khu vực</label>
                <form:select path="areaId" >
                    <c:forEach items="${areas}" var ="i">
                        <option value="${i.getArea_id()}">${i.getArea_name()}</option>
                    </c:forEach>
                </form:select>
            </div>
            <div class="create_form_body_item">
                <label >Giá</label>
                <form:input type="text" path="price"  placeholder="Nhập giá"/>
            </div>
            <div class="create_form_body_item">
                <label >Hình ảnh</label>
                <input type="file" name="images"  placeholder="Chọn hình ảnh" multiple>
            </div>
            <div class="create_form_body_item">
                <label >Mô tả</label>
                <form:textarea path="description"  cols="65" rows="10"  placeholder="Nhập mô tả"></form:textarea>
            </div>
            <div class="create_form_body_item " style="margin-top:10px">
                <label >Loại tin</label>
                <form:select path = "articleTypeId" >
                    <c:forEach items="${articleTypes}" var ="i">
                        <form:option value="${i.getArticleTypeId()}" >${i.getArticleTypeName()}</form:option>
                    </c:forEach>
                </form:select>
            </div>
            <input type="submit" value="Đăng tin" class="btn-danger">
        </div>
    </form:form>
</div>

</body>

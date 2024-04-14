<%-- 
    Document   : home
    Created on : Apr 11, 2024, 9:49:30 PM
    Author     : TUF
--%>
<%@page import="DTO.Category"%>
<%@page import="DTO.Toy"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="css/footer.css" rel="stylesheet"/>
    </head>
    <body>
        <!-- Navbar-->
        <%@include file="components/navBarComponent.jsp" %>
        <!-- Header-->
        <header class="py-5" style="background-image: url(img/background.png)">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-primary">
                    <h1 class="display-4 fw-bolder" style="font-family: cursive">Kids Store</h1>
                    <p class="lead fw-normal text-dark-50 mb-0" style="font-family: Monospace">Yêu thương mong con tỏa sáng</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-3 mb-5">

                        <%
                            ArrayList<Category> categoryList = (ArrayList<Category>) request.getAttribute("CATEGORY_LIST");
                            if (categoryList != null) {
                        %>

                        <h3>Danh mục</h3>
                        <ul class="list-group category_block">
                            <%
                                for (Category category : categoryList) {
                            %>

                            <li class="list-group-item text-black"><a href=""><%=category.getCategoryName()%></a></li>
                                <%}
                                } else {
                                %>
                            <p>Không có loại đồ chơi nào</p>
                            <%
                                }
                            %>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <h3>Danh mục sản phẩm</h3>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">

                            <%
                                ArrayList<Toy> toyList = (ArrayList<Toy>) request.getAttribute("TOY_LIST");
                                if (toyList != null) {
                                    for (Toy toy : toyList) {
                            %>
                            <div class="col mb-5">
                                <div class="card h-100">
                                    Sale badge
                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                        Sale off
                                    </div>
                                    Product image
                                    <img class="card-img-top" src="https://www.mykingdom.com.vn/cdn/shop/files/6941848233653_1.jpg?v=1711523586&width=990" alt="..."/>
                                    Product details
                                    <div class="card-body p-4">
                                        <div class="text-center">
                                            Product name
                                            <h5 class="fw-bolder"><%=toy.getToyName()%></h5>
                                            Product reviews
                                            <div class="d-flex justify-content-center small text-warning mb-2">
                                                <div class="bi-star-fill">5</div>
                                            </div>
                                            Product price
                                            <span class="text-muted text-decoration-line-through"><%=toy.getPrice()%> Đ</span>        
                                            791.000 Đ
                                        </div>
                                        Product actions
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center">
                                                <a class="btn btn-outline-dark mt-auto">Thêm vào giỏ hàng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}
                            } else {
                            %>
                            <p>Không có đồ chơi nào</p>
                            <%
                                }
                            %>

                        </div>
                    </div>
                </div>
        </section>   
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

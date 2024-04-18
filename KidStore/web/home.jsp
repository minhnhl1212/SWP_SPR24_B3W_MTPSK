<%-- 
    Document   : home
    Created on : Apr 11, 2024, 9:49:30 PM
    Author     : TUF
--%>
<%@ page import="java.text.DecimalFormat" %>
<%@page import="DTO.Account"%>
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
        <% Account a = (Account) session.getAttribute("acc");
            int role = 0;
            if (a != null) {
                role = a.getRoleId();
            }
        %>
        <%if (role <= 2 && role != 0) {%>
        <a style="background-color: greenyellow; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCategory.jsp">Manager Category</a>
        <a style="background-color: paleturquoise; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Product</a>
        <a style="background-color: wheat; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Customer</a>
        <a style="background-color: #0d6efd; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Other</a>
        <%}
            if (role == 1) {%>
        <a style="background-color: wheat; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Customer</a>
        <a style="background-color: #0d6efd; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Other</a>
        <%}%>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">

                    <!-- Section Left -->
                    <div class="col-md-3 mb-5">

                        <%
                            ArrayList<Category> categoryList = (ArrayList<Category>) session.getAttribute("CATEGORY_LIST");
                            if (categoryList != null) {
                        %>

                        <h3>Danh mục</h3>
                        <ul class="list-group category_block">
                            <%
                                for (Category category : categoryList) {
                            %>

                            <li class="list-group-item text-black"><a href="CategoryController?categoryId=<%=category.getCategoryId()%>"><%=category.getCategoryName()%></a></li>
                                <%}
                                } else {
                                %>
                            <p>Không có loại đồ chơi nào</p>
                            <%
                                }
                            %>
                        </ul>
                    </div>

                    <!-- Section Right -->    
                    <div class="col-md-9">
                        <h3>Danh mục sản phẩm</h3>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">

                            <%
                                ArrayList<Toy> toyList = (ArrayList<Toy>) session.getAttribute("TOY_LIST");
                                ArrayList<Toy> toyCategoryList = (ArrayList<Toy>) request.getAttribute("TOY_CATEGORY_LIST");
                                if (toyList != null && toyCategoryList == null) {
                                    for (Toy toy : toyList) {
                            %>
                            <div class="col mb-5">

                                <div class="card h-100">

                                    <!--  Sale badge -->
                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                        Sale off
                                    </div>

                                    <!-- Product image -->
                                    <img class="card-img-top" src="<%=toy.getImage()%>" alt="..."/>


                                    <div class="card-body">
                                        <div class="text-center">

                                            <!-- Product name -->
                                            <h5 class="fw-bolder"><%=toy.getToyName()%></h5> 
                                        </div>
                                    </div>
                                    <ul class="text-center list-group-item">
                                        <!-- Product reviews -->
                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                        </div>
                                        <li class="text-center list-group-item">
                                            <!-- Format VND -->
                                            <%
                                                double price = toy.getPrice();
                                                double discount = toy.getDiscount();
                                                double discountedPrice = price * discount;

                                                DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");

                                                // Định dạng giá giảm giá thành tiền tệ Việt Nam
                                                String formattedPrice = vnCurrencyFormat.format(discountedPrice);
                                                String priceBefore = vnCurrencyFormat.format(price);
                                            %>
                                            <!-- Discount -->
                                            <span class="text-muted text-decoration-line-through"><%=priceBefore%></span><br/> 
                                            <!-- Price -->
                                            <span class="text-black"><%= formattedPrice%></span></li>
                                    </ul>
                                    <!-- Product actions -->
                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent ">
                                        <div class="text-center">
                                            <a class="btn btn-outline-dark mt-auto" href="MainController?btAction=Sell&toyId=<%=toy.getToyId()%>">
                                                Thêm vào giỏ hàng
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <!-- Danh sách đồ chơi theo CategoryId -->
                            <%}
                            } else if (toyCategoryList != null) {
                                for (Toy toy : toyCategoryList) {
                            %>
                            <div class="col mb-5">

                                <div class="card h-100">

                                    <!--  Sale badge -->
                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                        Sale off
                                    </div>

                                    <!-- Product image -->
                                    <img class="card-img-top" src="<%=toy.getImage()%>" alt="..."/>


                                    <div class="card-body">
                                        <div class="text-center">

                                            <!-- Product name -->
                                            <h5 class="fw-bolder"><%=toy.getToyName()%></h5> 
                                        </div>
                                    </div>
                                    <ul class="text-center list-group-item">
                                        <!-- Product reviews -->
                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                        </div>
                                        <li class="text-center list-group-item">
                                            <!-- Format VND -->
                                            <%
                                                double price = toy.getPrice();
                                                double discount = toy.getDiscount();
                                                double discountedPrice = price * discount;

                                                DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");

                                                // Định dạng giá giảm giá thành tiền tệ Việt Nam
                                                String formattedPrice = vnCurrencyFormat.format(discountedPrice);
                                                String priceBefore = vnCurrencyFormat.format(price);
                                            %>
                                            <!-- Discount -->
                                            <span class="text-muted text-decoration-line-through"><%=priceBefore%></span><br/> 
                                            <!-- Price -->
                                            <span class="text-black"><%= formattedPrice%></span></li>
                                    </ul>
                                    <!-- Product actions -->
                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent ">
                                        <div class="text-center">
                                            <a class="btn btn-outline-dark mt-auto" href="MainController?btAction=Sell&toyId=<%=toy.getToyId()%>">
                                                Thêm vào giỏ hàng
                                            </a>
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

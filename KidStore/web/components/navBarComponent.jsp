<%-- 
    Document   : navBarComponent
    Created on : Apr 11, 2024, 8:30:54 PM
    Author     : TUF
--%>

<%@page import="DTO.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Icon -->
<link href="assets/fontawesome-free-6.1.1-web/css/all.css" rel="stylesheet" type="text/css">
<!-- Boxicons -->
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<!-- Navigation-->
<script>
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "LogoutController";
    }
</script>
<style>
    a.btn.btn-outline-dark {
        color: white;
        font-weight: 600;
        border: none;
    }
    button.btn.btn-outline-primary.ms-lg-2 {
        color: white;
        font-weight: 600;
        border: none;
    }
    .news-btn {
        background-color: gold;

    }
    .news-btn:hover {
        background-color: #ffe764;

    }
    .info-btn {
        background-color: cornflowerblue;
    }
    .info-btn:hover {
        background-color: #8bb0f3;
    }
    .cart-btn {
        background-color: chartreuse;
    }
    .cart-btn:hover {
        background-color: #b6ff6e
    }
    .logout-btn {
        background-color: orangered;
    }
    .logout-btn:hover {
        background-color: #f97d4f;
    }
    .login-btn {
        background-color: blue;
    }
    .login-btn:hover {
        background-color: #7c7cff;
    }
    .search-btn {
        background-color: white;
        color: gray;
        border: none;
    }
    .search-btn:hover {
        background-color: #e9e9e9;
        color: black;
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #80dfff;">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="MainController?TOY_LIST=ALL"><img src="img/logo-kids-new3.png" class="logo" alt="KidStore"></a>
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <form action="SearchController" class="d-flex mx-auto">
                <input                    
                    class="form-control me-2"
                    type="search"
                    placeholder="Tìm kiếm"
                    aria-label="Search"
                    name="nameSearch"
                    />
                <input class="btn btn-outline-success ml-2 search-btn" type="submit"></input>
            </form>

            <div class="d-flex my-4 mr-2">
                <a style="margin-right: 15px;"class="btn btn-outline-dark mt-auto news-btn" href="NewsController">Tin tức</a>

                <%
                    Account acc = (Account) session.getAttribute("acc");
                    if (acc != null) {
                %>
                <a class="btn btn-outline-dark cart-btn" href="cart.jsp">
                    <i class="bi-cart-fill me-1"></i>
                    Giỏ hàng
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.cartList.size()}</span>
                </a>
                <a style="margin-left: 15px;" class="btn btn-outline-dark info-btn" href="LoadOrderHistoryController?userId=<%=acc.getUserId()%>">
                    <i class='bx bx-user'></i>
                    Thông tin
                </a>
                <%
                } else {

                %>
                <p></p>
                <%    }
                %>


            </div>

            <c:choose>
                <c:when test="${sessionScope.acc == null}">
                    <button class="btn btn-outline-primary ms-lg-2 login-btn" onclick="login()">Đăng nhập</button>
                </c:when>

                <c:otherwise>
                    <button class="btn btn-outline-primary ms-lg-2 logout-btn" onclick="logout()">Đăng xuất</button>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
</nav>

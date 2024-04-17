<%-- 
    Document   : navBarComponent
    Created on : Apr 11, 2024, 8:30:54 PM
    Author     : TUF
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<script>
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "LogoutController";
    }
</script>
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

            <form action="search" class="d-flex mx-auto">
                <input
                    value="${key}"
                    class="form-control me-2"
                    type="search"
                    placeholder="Search"
                    aria-label="Search"
                    name="keyword"
                    />
                <button class="btn btn-outline-success ml-2" type="submit">
                    Search
                </button>
            </form>
            
            <div class="d-flex my-4 mr-2">
                <a  style="margin-right: 15px;"class="btn btn-outline-dark mt-auto" href="NewsController">News</a>
                <a class="btn btn-outline-dark" href="cart.jsp">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.cartList.size()}</span>
                </a>
            </div>

            <c:choose>
                <c:when test="${sessionScope.acc == null}">
                    <button class="btn btn-outline-primary ms-lg-2" onclick="login()">Login</button>
                </c:when>

                <c:otherwise>
                    <button class="btn btn-outline-primary ms-lg-2" onclick="logout()">Log Out</button>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
</nav>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>detail</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/footer.css" rel="stylesheet"/>
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>
        
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://www.mykingdom.com.vn/cdn/shop/files/6941848233653_1.jpg?v=1711523586&width=990" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1"> ID </div>
                        <h1 class="display-4 fw-bolder"> Name </h1>
                        <p class="lead"> Description </p>
                        
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through">280.000</span>
                            <span>-></span>
                            <span>200.000</span>
                        </div>
                        
                        <div class="d-flex">
                            <a href="add-to-cart?productId=${toy.id}" class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </a>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </section>
        
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

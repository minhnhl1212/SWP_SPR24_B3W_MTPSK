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
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="css/footer.css" rel="stylesheet"/>
    </head>
    <style>

        .container{
            margin-bottom: 20px;

        }
        .product-container {
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 20px;
        }

        .carousel-item img {
            width: 100%;
            height: 400px; 
            object-fit: cover; 
        }

        .product-details {
            padding-left: 20px;
        }

        .product-name {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-price {
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
        }

        .quantity-input {
            width: 80px;
            text-align: center;
        }

        .add-to-cart-button {
            display: block;
            width: 100%;
            max-width: 200px;
            margin: 0 auto;
        }
        .rating {
            font-size: 24px;
            color: #ffcc33;
        }
    </style>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container">
            <div class="product-container">
                <div class="row">                   
                    <div class="col-md-6">
                        <div id="carouselExample" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="https://sudospaces.com/babycuatoi/uploads/08092016/do-choi-mo-hinh-xe-tai-co-lon-wy301s-2.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="https://down-vn.img.susercontent.com/file/e9121b3318e52fb41deb5f656b927172" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item ">
                                    <img src="https://dochoimohinh.vn/wp-content/uploads/2020/05/do-choi-tre-em-xe-tai-cho-hang-co-lon-mo-hinh-xe-cong-trinh-300x300.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item ">
                                    <img src="https://down-vn.img.susercontent.com/file/5a4896e1bdbf36f13bd54fb49c8bbbb8" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>                  
                    </div>
                    <div class="col-md-6">

                        <div class="product-details">
                            <div class="product-name">Mô Hình Universal Kung Fu Panda</div>
                            <div class="rating">
                                &#9733; &#9733; &#9733; &#9733; &#9733;
                            </div>
                            <div class="product-price">260.000</div>
                            <p>&#10159; Warranty genuine</p>
                            <p>&#10159; Apply discount vouchers</p>
                            <p>&#10159; Return if the product is defective</p>

                            <div class="quantity">
                                <label for="quantity"></label>
                                <input type="number" id="quantity" class="quantity-input" value="1">

                            </div>                           
                        </div>
                        <a href="cart.jsp"><button  class="btn btn-primary add-to-cart-button">Add to Cart</button></a>
                        <div class="product-details">ID: A001</div>
                        <div class="product-details">Danh mục: Đồ chơi sưu tập</div>

                    </div>
                </div>
            </div>

        </div>

        <%@include file="components/footerComponent.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

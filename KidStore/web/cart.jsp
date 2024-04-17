<%@page import="java.util.HashMap"%>
<%@page import="DTO.Toy"%>
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
        <title>Giỏ Hàng</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/footer.css" rel="stylesheet"/>
    </head>
    <style>
        .container{
            margin-bottom: 20px;
        }
    </style>

    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container">
            <h1>Giỏ Hàng</h1>
            <div class="row">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Ảnh</th>
                                <th scope="col">Tên Đồ Chơi</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Số Lượng</th>
                                <th scope="col">Tổng </th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                        <form action="update-quantity">
                            <tr>
                            <input type="hidden" name="productId" value="Id"/>
                            <th scope="row">1</th>
                            <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50"/></td>
                            <td>Mô Hình Universal Kung Fu Panda</td>
                            <td>260.000 đ</td>
                            <td><input onchange="" type="number" name="quantity" value=""/></td>
                            <td>260.000 đ</td>
                            <td><a href="delete-cart?productId=" class="btn btn-outline-dark"><i></i>X</a></td>
                            </tr>
                        </form>
                        </tbody>
                    </table>

                </div>

                <div class="col-md-7">
                    <a href="" class="btn btn-light btn-block"><- Về Trang Chủ</a>
                </div>

                <div class="col-md-5">
                    <div class="input-group mb-4">
                        <input type="text" class="form-control" placeholder="Enter voucher code">
                        <div class="input-group-append">
                            <button class="btn btn-outline-danger" type="button">Áp dụng</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Summary</h5>
                            <p class="card-text">Subtotal: 260.000 đ</p>
                            <p class="card-text">Discount: 0 đ</p>
                            <p class="card-text">Total: 260.000 đ</p>
                        </div>
                    </div>
                    <a href="checkout.jsp" class="btn btn-primary btn-block">Thanh Toán</a>
                </div>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
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
        <title>Checkout</title>
        <!-- Favicon-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="css/footer.css" rel="stylesheet"/>
    </head>
    <style>
        .container{
            margin-bottom: 20px;
        }
        .checkout-form {
            margin-bottom: 20px;
        }

        .confirmation {
            border: 1px solid #ccc;
            padding: 20px;
        }

        .confirmation h5 {
            margin-bottom: 20px;
        }

        .confirmation p {
            margin: 5px 0;
        }
    </style>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container">
            <h1>Thanh Toán</h1>
            <div class="row">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6">
                            <h5>Billing Details</h5>
                            <form class="checkout-form">
                                <div class="form-group required">
                                    <label for="name">Tên</label>
                                    <input type="text" class="form-control" id="name" placeholder="">
                                </div>
                                <div class="form-group required">
                                    <label for="phone">Thành Phố</label>
                                    <input type="text" class="form-control" id="phone" placeholder="">
                                </div>
                                <div class="form-group required">
                                    <label for="address">Địa chỉ</label>
                                    <input type="text" class="form-control" id="address" placeholder="">
                                </div>
                                <div class="form-group required">
                                    <label for="phone">Số Điện Thoại</label>
                                    <input type="text" class="form-control" id="phone" placeholder="">
                                </div>
                                <h5>Additional Information</h5>
                                <div class="form-group">
                                    <label for="phone">Ghi chú</label>
                                    <input type="text" class="form-control form-control-lg" id="phone" placeholder="">
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <div class="confirmation">
                                <h5>Xác Nhận Đơn Hàng</h5>
                                <div class="row mb-5">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>SL: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>

                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>Qty: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>


                                        </tbody>
                                    </table>
                                </div>
                                <h5>Card Total</h5>
                                <div class="card-body">
                                    <p class="card-text">Subtotal: 260.000 đ</p>
                                    <p class="card-text">Discount: 0 đ</p>
                                    <p class="card-text">Total: 260.000 đ</p>
                                </div>
                                <a href="history.jsp"><button class="btn btn-success btn-block">Xác nhận thanh toán</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="components/footerComponent.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

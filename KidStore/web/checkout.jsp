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
        <!-- Bootstrap icons-->
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
            <script>
                function validateFormData() {
                    var name = document.getElementById("name").value.trim();
                    var address = document.getElementById("address").value.trim();
                    var phoneNumber = document.getElementById("phone").value.trim();
                    var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked');

                    var errorMessage = "";
                    if (name === "") {
                        errorMessage += "Vui lòng nhập Tên.<br>";
                    }
                    if (address === "") {
                        errorMessage += "Vui lòng nhập Địa chỉ.<br>";
                    }
                    if (phoneNumber === "") {
                        errorMessage += "Vui lòng nhập Số Điện Thoại.<br>";
                    } else if (!phoneNumber.match(/^\d{10,11}$/)) {
                        errorMessage += "Số Điện Thoại không hợp lệ.<br>";
                    }
                    if (!paymentMethod) {
                        errorMessage += "Vui lòng chọn phương thức thanh toán.<br>";
                    }
                    if (errorMessage !== "") {
                        document.getElementById("errorMessages").innerHTML = errorMessage;
                        return false;
                    }
                    if (paymentMethod.value === "cashOnDelivery") {
                        alert("Đơn hàng của bạn đã được xác nhận. Chúng tôi sẽ liên hệ với bạn để sắp xếp giao hàng.");
                    } else if (paymentMethod.value === "bankTransfer") {
                        var vnpayUrl = "";
                        window.open(vnpayUrl, "_blank");
                    }
                    return true;
                }
            </script>

            <div class="row">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6">
                            <h5>Billing Details</h5>
                            <form class="checkout-form" action="checkout.jsp" method="post" onsubmit="return validateFormData()">

                                <label>Tên</label>
                                <input type="text" class="form-control" id="name" placeholder="Tên">
                                <label>Địa chỉ</label>
                                <input type="text" class="form-control" id="address" placeholder="Địa chỉ">
                                <label>Số Điện Thoại</label>
                                <input type="text" class="form-control" id="phone" placeholder="Số Điện Thoại">

                                <div><label>Phương thức thanh toán</label></div>
                                <input type="radio" id="cashOnDelivery" name="paymentMethod" value="cashOnDelivery">
                                <label for="cashOnDelivery">Thanh toán khi nhận hàng</label><br>
                                <input type="radio" id="bankTransfer" name="paymentMethod" value="bankTransfer">
                                <label for="bankTransfer">Thanh toán qua ngân hàng</label>

                                <div id="errorMessages" style="color: red; margin-top: 10px;"></div>
                                <input type="submit" class="btn btn-success btn-block" value="Xác nhận thanh toán">

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

                                        <form action="CartController">

                                            <tr>
                                                <td><img src="https://cdn-v2.kidsplaza.vn/media/catalog/product/d/o/do-choi-o-to-day-da-cy-7712-1.jpg" width="50" alt="Product Image"></td>
                                                <td>Mô Hình Universal Kung Fu Panda</td>
                                                <td>260.000 đ</td>
                                                <td>SL: 1</td>
                                                <td>260.000 đ</td>
                                            </tr>
                                        </form>
                                        </tbody>
                                    </table>
                                </div>
                                <h5>Card Total</h5>
                                <div class="card-body">
                                    <p class="card-text">Subtotal: đ</p>
                                    <p class="card-text">Discount: 0 đ</p>
                                    <p class="card-text">Total:  đ</p>
                                </div>
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

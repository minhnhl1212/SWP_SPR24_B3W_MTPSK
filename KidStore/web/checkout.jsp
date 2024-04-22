<%@page import="java.text.DecimalFormat"%>
<%@page import="DTO.Account"%>
<%@page import="java.util.HashMap"%>
<%@page import="DTO.Toy"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                    }
                    return true;
                }
            </script>
            <%  int i = 1;
                double sum = 0, discount = 0;
                HashMap<Toy, Integer> cartItems = (HashMap<Toy, Integer>) session.getAttribute("cartList");
                Account a = (Account) session.getAttribute("acc");%>
            <div class="row">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6">
                            <h5>Billing Details</h5>
                            <form class="checkout-form" action="MainController" method="post" onsubmit="return validateFormData()">

                                <label>Tên</label>
                                <input type="text" class="form-control" id="name" placeholder="Tên" name="name">
                                <label>Địa chỉ</label>
                                <input type="text" class="form-control" id="address" placeholder="Địa chỉ" name="address">
                                <label>Số Điện Thoại</label>
                                <input type="text" class="form-control" id="phone" placeholder="Số Điện Thoại" name="phone">

                                <div><label>Phương thức thanh toán</label></div>
                                <input type="radio" id="cashOnDelivery" name="paymentMethod" value="cashOnDelivery">
                                <label for="cashOnDelivery">Thanh toán khi nhận hàng</label><br>
                                <input type="radio" id="bankTransfer" name="paymentMethod" value="bankTransfer">
                                <label for="bankTransfer">Thanh toán qua ngân hàng</label>

                                <div id="errorMessages" style="color: red; margin-top: 10px;"></div>
                                <input type="submit" class="btn btn-success btn-block" name="btAction" value="Create">

                            </form>
                        </div>
                        <div class="col-md-6">
                            <div class="confirmation">
                                <h5>Xác Nhận Đơn Hàng</h5>
                                <div class="row mb-5">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Ảnh</th>
                                                <th scope="col">Tên đồ chơi</th>
                                                <th scope="col">Giá</th>
                                                <th scope="col">Số lượng</th>
                                                <th scope="col">Thành Tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                                                for (HashMap.Entry<Toy, Integer> c : cartItems.entrySet()) {
                                                    double prices = c.getKey().getPrice() * c.getValue() * c.getKey().getDiscount();
                                                    double eachPrice = c.getKey().getPrice() * c.getKey().getDiscount();

                                                    String formatPrices = vnCurrencyFormat.format(prices);
                                                    String formatEachPrices = vnCurrencyFormat.format(eachPrice);
                                            %>
                                        <form action="CartController">

                                            <tr>
                                                <td><img src="<%=c.getKey().getImage()%>" width="50" alt="Product Image"></td>
                                                <td><%=c.getKey().getToyName()%></td>
                                                <td><%=formatEachPrices%></td>
                                                <td><%=c.getValue()%></td>
                                                <td><%sum += prices;%><%=formatPrices%></td>
                                            </tr>
                                        </form>
                                        <%}%>
                                        </tbody>
                                    </table>
                                </div>
                                <h5>Card Total</h5>
                                <%
                                    String formatSum = vnCurrencyFormat.format(sum);
                                    double DiscountValue = 0;
                                    double Discount = 1;
                                    double totalPrice = 0;
                                    String DiscountParam = (String) session.getAttribute("discount");
                                    if (DiscountParam != null) {
                                        Discount = Double.parseDouble(DiscountParam);
                                        DiscountValue = sum - sum * Discount;
                                        totalPrice = sum - DiscountValue;
                                    }
                                    String formatDiscountValue = vnCurrencyFormat.format(DiscountValue);
                                    String formatTotalPrice = vnCurrencyFormat.format(totalPrice);
                                %>
                                <div class="card-body">
                                    <h5 class="card-title">Summary</h5>
                                    <p class="card-text">Subtotal: <%=formatSum%></p>
                                    <p class="card-text">Discount: <%=formatDiscountValue%></p>
                                    <p class="card-text">Total: <%=formatTotalPrice%></p>
                                </div>
                                <%session.setAttribute("orderAmount", sum - DiscountValue);%>
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

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
    </style>
    <%  int i = 1;
        double sum = 0, discount = 0;
        HashMap<Toy, Integer> cartItems = (HashMap<Toy, Integer>) session.getAttribute("cartList");%>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container">
            <h1>Giỏ Hàng</h1>
            <div class="row">
                <div class="col-md-12">
                    <%if (cartItems != null) {%>
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
                            <%for (HashMap.Entry<Toy, Integer> c : cartItems.entrySet()) {
                                    double prices = c.getKey().getPrice() * c.getValue() * c.getKey().getDiscount();
                            %>
                        <form action="CartController">
                            <tr>
                            <input type="hidden" name="productId" value="Id"/>
                            <th scope="row"><%=i++%></th>
                            <td><img src="<%=c.getKey().getImage()%>" width="50"/></td>
                            <td><%=c.getKey().getToyName()%></td>
                            <td><%=c.getKey().getPrice() * c.getKey().getDiscount()%></td>
                            <td><input onchange="this.form.submit()" type="number" name="quantity" value="<%=c.getValue()%>"/></td>
                            <td><% sum += prices;%><%=prices%> Đ</td>
                            <td><a href="DeleteCartController?productId=<%=c.getKey().getToyId()%>" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Delete</a></td>
                            </tr>
                        </form>
                            <%}%>
                        </tbody>
                    </table>
<%}%>
                </div>

                <div class="col-md-7">
                    <a href="MainController" class="btn btn-light btn-block"><- Về Trang Chủ</a>
                </div>

                <div class="col-md-5">
                    <div class="input-group mb-4" >
                        <form action ="VoucherController">
                        <input type="text" class="form-control" placeholder="Enter voucher code" name="Voucher" value="">
                        <div class="input-group-append">
                            <button class="btn btn-outline-danger" type="button">Áp dụng</button>
                        </div>
                        </form>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Summary</h5>
                            <p class="card-text">Subtotal: <%=sum%> đ</p>
                            <p class="card-text">Discount: <%=discount%> đ</p>
                            <p class="card-text">Total: <%=sum-discount%> đ</p>
                        </div>
                    </div>
                    <a href="checkout.jsp" class="btn btn-success btn-block">Thanh Toán</a>
                </div>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
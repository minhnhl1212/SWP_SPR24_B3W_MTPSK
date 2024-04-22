<%@page import="java.text.DecimalFormat"%>
<%@page import="DTO.OrderWarranty"%>
<%@page import="DTO.Account"%>
<%@page import="DTO.OrderHistory"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="css/footer.css" rel="stylesheet"/>
        <link href="css/profile.css" rel="stylesheet"/>
    </head>
    <style>
        .outer-box {
            width: 120%;
            height: auto;
            margin-top: 20px;
            border: 1px solid black;
            border-radius: 5px;
            padding: 20px;
        }
        .search-bar{
            width: 120%;
            height: auto;
        }
        .popup-form {
            display: none;
            width: 350px;
            height: 245px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #80dfff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>
    <body>
        <%@include file="components/navBarComponent.jsp" %>
        <div class="selection container row">

            <!-- SECTION LEFT -->

            <div class="col-md-12 col-lg-3">
                <div class="profile-img">
                    <img src="img/people.jpg" alt="User Avt"/>
                </div>
                <div class="profile-name">Customer</div>
                <ul id="profile-function" class="list-group">
                    <li class="function-select list-group-item list-group-item-action" id="selected">
                        <a href="LoadOrderHistoryController?userId=<%=acc.getUserId()%>" style="text-decoration: none">
                            <span class="text-profile">Lịch sử mua hàng</span>
                        </a>
                    </li>
                    <li class="function-select list-group-item list-group-item-action">
                        <a href="LoadWarrantyController?userId=<%=acc.getUserId()%>" style="text-decoration: none">
                            <span class="text-profile">Bảo hành sản phẩm</span>
                        </a>
                    </li>
                    <li class="function-select list-group-item list-group-item-action">
                        <a href="LogoutController" style="text-decoration: none">
                            <span class="text-profile">Logout</span>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- SECTION RIGHT -->

            <div class="section_right col-md-12 col-lg-9">
                <div class="container" style="margin: 30px 20px; ">
                    <div class="row">
                        <h3>Lịch sử mua hàng</h3>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="search-bar">
                                <input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm">
                            </div>
                        </div>
                    </div>

                    <%
                        ArrayList<OrderHistory> orderList = (ArrayList<OrderHistory>) session.getAttribute("ORDER_HISTORY");
                        /* Format VND */
                        DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                        if (orderList != null && acc != null) {
                            for (OrderHistory order : orderList) {
                                String formatPrice = vnCurrencyFormat.format(order.getPrice());
                                String formatOrderPrice = vnCurrencyFormat.format(order.getOrderPrice());
                                String formatOrderAmount = vnCurrencyFormat.format(order.getOrderAmount());
                    %>

                    <!-- đơn thứ 1-->
                    <div class="outer-box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row" >
                                    <div class="col-md-6">
                                        <div class="product-name" style="justify-content: flex-start; display: flex;">&#128340; Ngày mua: <%=order.getOrderDate()%></div>
                                    </div>
                                    <div class="col-md-6" >
                                        <div class="product-name" style="color: green; justify-content: flex-end; display: flex; font-weight: bold;"><%=order.getStatus()%></div>
                                    </div>
                                </div>
                                <hr style="margin: 5px 0;">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-2" >
                                                <img src="<%=order.getImageToy()%>" alt="Product Image" style="width: 100px; height: 100px; object-fit: cover; ">
                                            </div>
                                            <div class="col-md-6">
                                                <div class="product-name"><%=order.getToyName()%></div>
                                                <div class="product-name">Số lượng: <%=order.getQuantity()%></div>
                                                <div class="product-name">Danh mục: <%=order.getNameCategory()%></div>
                                                <div class="product-name"><%=order.getDescription()%></div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="product-price" style="display: flex; align-items: center; justify-content: flex-end; "><del><%= formatPrice%></del> </div></br>
                                                <div class="product-price" style="display: flex; align-items: center; justify-content: flex-end; "><%=formatOrderPrice%></div></br>
                                                <div class="product-price" style="display: flex; align-items: center; justify-content: flex-end; font-size: 16px;">
                                                    <button class="sendFeedback">
                                                        <a href="#" style="text-decoration: none; color: black;" onclick="togglePopup()">Send Feedback<i class='bx bx-mail-send'></i></a>
                                                    </button>
                                                    </br>
                                                    <p style="color: green">${SEND_FEEDBACK_SUCCESS}</p>
                                                    <p style="color: red">${SEND_FEEDBACK_FAILED}</p>
                                                </div>                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr style="margin: 10px 0;">
                                <div class="row">
                                    <div class="col-md-12" >
                                        <div class="row">
                                            <div class="product-name" style=" display: flex;justify-content: flex-end;">                                                  
                                                <h5><i class='bx bx-money'></i> Thành tiền: <%=formatOrderAmount%></h5>
                                            </div>                            
                                        </div>
                                    </div>
                                </div>
                                <div class="popup-form" id="popupForm">                    
                                    <form action="SendFeedbackController">
                                        <h4>Gửi Feedback</h4>
                                        <a class="close" href="#" style="text-decoration: none; color: black; margin-top: -14%;" onclick="togglePopup()">X</a>                        
                                        <div class="form-group">
                                            <label for="issueDescription">Mô tả vấn đề:</label>
                                            <textarea class="form-control" id="issueDescription" name="issueDescription" rows="3"></textarea>
                                            <input type="hidden" name="userId" value="<%=acc.getUserId()%>">
                                            <input type="hidden" name="orderId" value="<%=order.getOrderId()%>">
                                        </div>     

                                        <button type="submit" class="btn btn-primary d-block mx-auto" >Gửi yêu cầu</button>
                                    </form>                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}
                    } else {
                    %>
                    <p>${ORDER_HISTORY_ERROR}</p>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
    <script>
                                                function togglePopup() {
                                                    var popup = document.getElementById("popupForm");
                                                    popup.style.display = (popup.style.display === "block") ? "none" : "block";
                                                }
    </script>
</html>

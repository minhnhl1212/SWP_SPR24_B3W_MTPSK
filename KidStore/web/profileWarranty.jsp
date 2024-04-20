<%-- 
    Document   : profileWarranty
    Created on : Apr 18, 2024, 12:49:40 AM
    Author     : TUF
--%>

<%@page import="DTO.OrderWarranty"%>
<%@page import="DTO.OrderWarranty"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
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
        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <style>
        .popup-form {
            display: none;
            width: 350px;
            height: 550px;
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
                    <li class="function-select list-group-item list-group-item-action">
                        <a href="profileHistory.jsp" style="text-decoration: none">
                            <span class="text-profile">Lịch sử mua hàng</span>
                        </a>
                    </li>
                    <li class="function-select list-group-item list-group-item-action" id="selected">
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

            <!-- RIGHT -->

            <div class="section_right col-md-12 col-lg-9">

                <div class="container" style="margin: 30px 20px; ">
                    <div class="title-profile-cate">
                        <h1>Danh sách đồ chơi bảo hành</h1>
                    </div>

                    <div class="toy-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Ảnh</th>
                                    <th>Tên Đồ Chơi</th>
                                    <th>Số Lượng</th>
                                    <th>Ngày Mua</th>
                                    <th>Hạn Bảo Hành</th>
                                    <th>Trạng Thái</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ArrayList<OrderWarranty> warrantyList = (ArrayList<OrderWarranty>) session.getAttribute("ORDER_WARRANTY");
                                    if (warrantyList != null && acc != null) {
                                        for (OrderWarranty warranty : warrantyList) {
                                %>
                                <tr>
                                    <td><%=warranty.getOrderDetailId()%></td>
                                    <td><img src="<%=warranty.getImageToy()%>" alt="Toy Image" class="toy-item-img"/></td>
                                    <td><%=warranty.getToyName()%></td>
                                    <td><%=warranty.getQuantity()%></td>
                                    <td><%=warranty.getOrderDate()%></td>
                                    <td><%=warranty.getWarrantyTime()%></td>
                                    <td><%=warranty.getStatus()%></td>
                                    <td>
                                        <a href="#" style="text-decoration: none; color: black;" onclick="togglePopup()">
                                            <i class='bx bx-mail-send'></i>
                                        </a>
                                    </td>
                                </tr> 
                            <div class="popup-form" id="popupForm">
                                <form action="SendRequestWarranty">
                                    <h4>Kiểm tra bảo hành</h4>
                                    <a class="close" href="#" style="text-decoration: none; color: black; margin-top: -14%;" onclick="togglePopup()">X</a>
                                    <div class="form-group">
                                        <label for="productSKU">Mã bảo hành: <%=warranty.getWarrantyCode()%></label>
                                        <!--                                        <input type="text" class="form-control" id="productSKU" name="productSKU" value="" readonly>-->
                                    </div>
                                    <div class="form-group">
                                        <label for="purchaseDate">Ngày mua hàng: <%=warranty.getOrderDate()%></label>
                                    </div>

                                    <div class="form-group">
                                        <label for="customerAddress">Địa chỉ:</label>
                                        <input type="text" class="form-control" id="customerAddress" name="customerAddress" value="<%=warranty.getAddress()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="customerPhone">Số điện thoại:</label>
                                        <input type="tel" class="form-control" id="customerPhone" name="customerPhone" value="<%=warranty.getPhone()%>">
                                    </div>                                    
                                    <div class="form-group">
                                        <label for="issueDescription">Mô tả vấn đề:</label>
                                        <textarea class="form-control" id="issueDescription" name="issueDescription" rows="3"></textarea>
                                    </div>     
                                    <input type="hidden" name="orderDetailId" value="<%=warranty.getOrderDetailId()%>">
                                    <input type="hidden" name="userId" value="<%=acc.getUserId()%>">
                                    <button type="submit" class="btn btn-primary d-block mx-auto" >Gửi yêu cầu</button>
                                </form>

                            </div>
                            <%}
                            } else {
                            %>
                            <p>${ORDER_WARRANTY_ERROR}</p>
                            <%
                                }
                            %>
                            <%
                                OrderWarranty sendRequestWarranty = (OrderWarranty) request.getAttribute("SEND_REQUEST_SUCCESS");
                                if (sendRequestWarranty != null) {
                            %>
                            <p style="color: green">${SEND_REQUEST_SUCCESS}</p>
                            <%} else {
                            %>
                            <p style="color: red">${SEND_REQUEST_FAILED}</p>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


        </div>
        <%@include file="components/footerComponent.jsp" %>
        <script>
            function togglePopup() {
                var popup = document.getElementById("popupForm");
                popup.style.display = (popup.style.display === "block") ? "none" : "block";
            }
        </script>
    </body>
</html>

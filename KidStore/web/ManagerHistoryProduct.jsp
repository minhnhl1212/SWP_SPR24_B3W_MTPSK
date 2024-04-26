<%-- 
    Document   : ManagerHistoryProduct
    Created on : Apr 20, 2024, 11:02:27 AM
    Author     : ADMIN
--%>


<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Base64"%>
<%@page import="DTO.OrderHistory"%>
<%@page import="DTO.Toy"%>
<%@page import="DTO.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- CSS Icon -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Staff Dashboard</title>     
        <link rel="stylesheet" href="./assets/css/tailwind.output.css">
        <style>
            label {
                position: absolute;
                width: 274px;
                height: 47px;
                text-align: left;
                left: 14px;
                padding-top: 10px;
                color: white;
                text-shadow: 2px 2px 5px black;
            }
            div#add-product-form {
                position: absolute;
                top: 6.5%;
                left: 40%;
                border-radius: 20px;
            }
            .overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                display: none;
                z-index: 2;
            }

            .add {
                color: white;
                background-color: #7e3af2;
                border: none;
                padding: 10px 0px;
                border-radius: 13px;
                position: absolute;
                top: 300px;
                left: 284px;
                z-index: 3;
                width: 11%;
            }
            .close{
                position: absolute;
                top: 4px;
                right: 18px;
            }

            span {

            }

            input{
                color: black;
            }

            select{
                color: black;
            }

            textarea{
                color: black;
            }
            textarea#description {
                width: 90%;
            }
            img {
                max-width: 124px;
            }
            .description {
                max-height: 188px;
                margin-top: -93px;
            }
            .action-btn{
                background-color: #e5e5e5;
                padding: 10px 10px;
                margin: 2px 2px;
                border-radius: 30px;
                font-weight: 600;
            }
            .py-4.text-gray-500.dark\:text-gray-400 {
                background-color: #80DFFF;
                text-align: center;
            }
            .mt-6 {
                display: flex;
                justify-content: center;
            }
            .text-gray-800 {
                --text-opacity: 1;
                color: #1a1c23;
                font-family: serif;
                font-size: 30px;
            }
            th:nth-child(2), td:nth-child(2) {
                max-width: 200px;
                text-wrap: wrap;
            }
            .outer-box {
                width: 120%;
                height: auto;
                margin-top: 20px;
                border: 1px solid black;
                border-radius: 5px;
                padding: 20px;
            }
            /* css form info customer */
            .popup-form {
                display: none;
                width: 800px;
                height: 500px;
                position: fixed;
                top: 15%;
                left: 25%;
                background-color: whitesmoke;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                z-index: 3000;
            }

            .close-detail{
                float: right;
                font-size: 1.5rem;
                font-weight: 700;
                line-height: 1;
                color: #000;
                text-shadow: 0 1px 0 #fff;
                opacity: .5;
            }
        </style>
    </head>
    <body>

        <%
            Account acc = (Account) session.getAttribute("acc");
        %>

        <div>
            <a href="LogoutController" style="position: absolute; top: 20px; right: 30px">Logout</a>
        </div>
        <a class="navbar-brand" href="MainController?TOY_LIST=ALL"><img src="img/logo-kids-new3.png" class="logo" alt="KidStore"></a>
        <div class="py-4 text-gray-500 dark:text-gray-400">
            <a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="#">
                STAFF DASHBOARD
            </a>
            <ul class="mt-6" style="display: flex">
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadManagerProductController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                        </svg>
                        <span class="ml-4">ManagerProduct</span>
                    </a>
                </li>            
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadCategoryController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                        </svg>
                        <span class="ml-4">ManagerCategory</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadOrderFeedback">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path>
                        </svg>
                        <span class="ml-4">ManagerCustomer</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadManagerOtherController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                        <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                        </svg>
                        <span class="ml-4">ManagerWarranty</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadHistoryProductController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                        <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                        </svg>
                        <span class="ml-4">ManagerHistoryProduct</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="AddNew.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"></path>
                        </svg>
                        <span class="ml-4">Add News</span>
                    </a>
                </li>
            </ul>                        
        </div>    
        <div class="w-full overflow-hidden rounded-lg shadow-xs">
            <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">

                    <thead>
                        <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                            <th class="px-4 py-3">ID</th>
                            <th class="px-4 py-3">Product Name</th>
                            <th class="px-4 py-3">Image</th>
                            <th class="px-4 py-3">Category</th>
                            <th class="px-4 py-3">Price</th>
                            <th class="px-4 py-3">Discount</th>
                            <th class="px-4 py-3">Quantity</th>
                            <th class="px-4 py-3">Total</th>
                            <th class="px-4 py-3">Date</th>
                            <th class="px-4 py-3">Detail</th>
                            <th class="px-4 py-3">Status</th>
                            <th class="px-4 py-3">Action</th>
                        </tr>
                    </thead>                                     
                    <%
                        ArrayList<OrderHistory> orderList = (ArrayList<OrderHistory>) session.getAttribute("ORDER_HISTORY");
                        ArrayList<OrderHistory> idOrderList = (ArrayList<OrderHistory>) session.getAttribute("ID_ORDER_LIST");

                        Collections.sort(idOrderList, new Comparator<OrderHistory>() {
                            public int compare(OrderHistory order1, OrderHistory order2) {
                                return order2.getOrderId() - order1.getOrderId();
                            }
                        });

                        if (orderList != null && idOrderList != null) {
                            for (OrderHistory idOrder : idOrderList) {
                    %>
                    <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                        <tr class="text-gray-700 dark:text-gray-400">
                            <td class="px-4 py-3">
                                <%=idOrder.getOrderId()%>
                            </td>                                        

                            <td class="px-4 py-3 text-sm">
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                %>
                                <%=order.getToyName()%></br>
                                <%}
                                    }
                                %>
                            </td>
                            <td class="px-4 py-3 text-xs">
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                            String base64Image = Base64.getEncoder().encodeToString(order.getImageToy());

                                %>
                                <img src="data:image/jpeg;base64,<%= base64Image%>" alt="Toy Image">
                                <%}
                                    }
                                %>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                %>
                                <%=order.getNameCategory()%></br>
                                <%}
                                    }
                                %>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%--
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                %>
                                <%=order.getPrice()%></br>
                                <%}
                                    }
                                %> --%>
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                            DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                                            String formatPrice = vnCurrencyFormat.format(order.getPrice());
                                %>
                                <%=formatPrice%></br>
                                <%}
                                    }
                                %>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%--
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                %>
                                <%=order.getOrderPrice()%>  VNĐ</br>
                                <%}
                                    }
                                %>
                                --%>
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                            DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                                            String formatOrderPrice = vnCurrencyFormat.format(order.getOrderPrice());
                                %>
                                <%=formatOrderPrice%></br>
                                <%}
                                    }
                                %>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%
                                    for (OrderHistory order : orderList) {
                                        if (order.getOrderId() == idOrder.getOrderId()) {
                                %>
                                <%=order.getQuantity()%></br>
                                <%}
                                    }
                                %>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%
                                    DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                                    String formatOrderTotal = vnCurrencyFormat.format(idOrder.getOrderAmount());
                                %>
                                <%=formatOrderTotal%></br>

                            </td>

                            <!--
                            <td class="px-4 py-3 text-sm">
                            <%
                                if (idOrder.getTypePayment() == 0) {
                            %>
                            <p>Thanh Toán Khi Nhận Hàng</p>
                            <%
                            } else {
                            %>
                            <p>Thanh Toán Qua Ngân Hàng</p>
                            <%
                                }
                            %>
                        </td>
                            -->

                            <td class="px-4 py-3 text-sm">
                                <%=idOrder.getOrderDate()%>
                            </td>

                            <!--
                            <td class="px-4 py-3 text-sm">
                            <%=idOrder.getFullname()%>
                        </td>
                        <td class="px-4 py-3 text-sm">
                            <%=idOrder.getPhone()%>
                        </td>
                        <td class="px-4 py-3 text-sm">
                            <%=idOrder.getAddress()%>
                        </td>
                            -->

                            <!-- Form thông tin khách hàng -->
                            <td>
                                <button type="button" class="button-detail" onclick="togglePopup()"><i class='bx bx-detail'></i>Customer-Info</button>
                                <div class="popup-form" id="popupForm">
                                    <form method="POST">
                                        <p style="font-size: 40px; font-weight: bold; font-style: italic; text-align: center;">Customer - Detail</p>
                                        <a class="close-detail" href="#" style="text-decoration: none; color: black; margin-top: -5%;" onclick="togglePopup()">X</a>
                                        <div class="form-detail">
                                            <p style="font-size:30px; padding-top:50px;">Customer Name: <%=idOrder.getFullname()%></p>
                                            <p style="font-size:30px; padding-top:50px;">Phone: <%=idOrder.getPhone()%></p>
                                            <p style="font-size:30px; padding-top:50px;">Address: <%=idOrder.getAddress()%></p>
                                            <p style="font-size:30px; padding-top:50px;">Payments: <%= (idOrder.getTypePayment() == 0) ? "Thanh toán khi nhận hàng" : "Thanh toán qua ngân hàng"%></p>
                                        </div>
                                    </form>
                                </div>
                            </td>


                            <td class="px-4 py-3 text-sm">
                                <%=idOrder.getStatus()%>
                            </td>
                            <td class="px-4 py-3">                                                                       

                                <select id="statusSelect_<%=idOrder.getOrderId()%>" <% if (idOrder.getStatus().equals("Đã Giao Hàng") || idOrder.getStatus().equals("Từ Chối Bán Hàng")) { %> style="display: none;" <% } %>>
                                    <option value="default">Đặt Trạng Thái</option>
                                    <% if (idOrder.getStatus().equals("Đang Xử Lí")) { %>
                                    <option value="shipping" data-action="ShippingOrderController">Shipping</option>                                    
                                    <option value="refuse" data-action="RefuseOrderController">Refuse</option>
                                    <% } %>
                                    <% if (idOrder.getStatus().equals("Đang Giao Hàng")) { %>
                                    <option value="delivered" data-action="DeliveredOrderController">Delivered</option>
                                    <option value="refuse" data-action="RefuseOrderController">Refuse</option>
                                    <% }%>                         
                                </select>
                                <script>
                                    document.getElementById('statusSelect_<%=idOrder.getOrderId()%>').addEventListener('change', function () {
                                        var selectedValue = this.value;
                                        var action = this.options[this.selectedIndex].getAttribute('data-action');
                                        if (selectedValue !== 'default' && action) {
                                            window.location.href = action + "?orderDetailId=<%=idOrder.getOrderId()%>";
                                        }
                                    });
                                </script>
                            </td>
                        </tr>
                    </tbody>
                    <%}
                    } else {
                    %>
                    <p></p>
                    <%
                        }
                    %> 
                </table>
            </div>
        </div>
        <script>
            function togglePopup() {
                var popup = document.getElementById("popupForm");
                popup.style.display = (popup.style.display === "block") ? "none" : "block";
            }
        </script>
    </body>
</html>



<%@page import="DTO.OrderWarranty"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Staff Dashboard</title>
        <link rel="stylesheet" href="./assets/css/tailwind.output.css">


    </head>
    <style>
        .action-btn{
            background-color: #e5e5e5;
            padding: 10px 10px;
            margin: 2px 2px;
            border-radius: 30px;
            font-weight: 600;
        }
        label {
            position: absolute;
            width: 274px;
            height: 47px;
            text-align: left;
            left: 14px;
            padding-top: 0px;
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
            top: 67px;
            right: 107px;
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
        td {
            text-wrap: wrap;
        }
        th{
            text-align: center;
        }
        td.center{
            text-align: center;
        }
        th:nth-child(1), td:nth-child(1) {

            padding-left: 10px;
        }
        th:nth-child(3), td:nth-child(3) {
            max-width: 80px;
            padding: 0;
        }
        th:nth-child(9), td:nth-child(9) {
            min-width: 120px;
        }
        th:nth-child(10), td:nth-child(10) {
            min-width: 120px;
        }
        td{
            font-size: 13px;
        }
    </style>
    <body>

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
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerProduct.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                        </svg>
                        <span class="ml-4">ManagerProduct</span>
                    </a>
                </li>

                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerCategory.jsp">
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
                            <th class="py-3">ID Warranty</th>
                            <th class="px-4 py-3">Product Name</th>
                            <th class="py-3">Quantity</th>
                            <th class="py-3">Image</th>
                            <th class="py-3">Name Customer</th>
                            <th class="px-2 py-3">Phone</th>
                            <th class="px-4 py-3">Address</th>
                            <th class="py-3">Created Date</th>
                            <th class="py-3">Warranty</th>
                            <th class="py-3">Status</th>
                            <th class="px-3 py-3">Description</th>
                            <th class="px-4 py-3">Action</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                        <%
                            ArrayList<OrderWarranty> warrantyList = (ArrayList<OrderWarranty>) session.getAttribute("ORDER_WARRANTY");
                            if (warrantyList != null) {
                                for (OrderWarranty warranty : warrantyList) {
                        %>
                        <tr class="text-gray-700 dark:text-gray-400 center">
                            <td class="py-3">
                                <%=warranty.getWarrantyCode()%>
                            </td>
                            <td class="px-4 py-3"><%=warranty.getToyName()%></td>
                            <td class="py-3 center"><%=warranty.getQuantity()%></td>   
                            <td class="py-3 text-xs">
                                <img src="<%=warranty.getImageToy()%>" alt="Toy Image">
                            </td>
                            <td class="py-3 center"><%=warranty.getNameUser()%></td>   


                            <td class="px-2 py-3 center"><%=warranty.getPhone()%></td>
                            <td class="px-4 py-3"><%=warranty.getAddress()%></td>
                            <td class="py-3 center"><%=warranty.getOrderDate()%></td>
                            <td class="py-3 center"><%=warranty.getWarrantyTime()%></td>
                            <td class="py-3 center"><%=warranty.getStatus()%></td>
                            <%
                                if (warranty.getDescriptionWarranty() != null) {
                            %>
                            <td style="overflow-y: scroll; max-width: 100px;" class="px-2 py-3 text-sm">
                                <div class="description" style="white-space: pre-wrap;">
                                    <%=warranty.getDescriptionWarranty()%>
                                </div>
                            </td>
                            <%
                            } else {
                            %>
                            <td>No Description</td>
                            <%
                                }
                            %>

                            <td class="px-4 py-3 center">           
                                <select id="statusSelect_<%=warranty.getOrderDetailId()%>" <% if (warranty.getStatus().equals("Đã Giao Hàng") || warranty.getStatus().equals("Từ Chối Bảo Hành") || warranty.getStatus().equals("Không Có Yêu Cầu Bảo Hành")) { %> style="display: none;" <% } %>>
                                    <option value="default">Đặt Trạng Thái</option>
                                    <% if (warranty.getStatus().equals("Đang Xử Lí")) { %>
                                    <option value="received" data-action="ReceivedWarrantyController">Received</option>          
                                    <option value="refuse" data-action="RefuseWarrantyController">Refuse</option>
                                    <% } %>                                                          
                                    <% if (warranty.getStatus().equals("Đã Nhận Hàng")) { %>
                                    <option value="underwarranty" data-action="UnderWarrantyController">Under Warranty</option>
                                    <option value="refuse" data-action="RefuseWarrantyController">Refuse</option>
                                    <% }%>        
                                    <% if (warranty.getStatus().equals("Đang Bảo Hành")) { %>                    
                                    <option value="shipping" data-action="ShippingWarrantyController">Shipping</option>
                                    <option value="refuse" data-action="RefuseWarrantyController">Refuse</option>
                                    <% }%>    
                                    <% if (warranty.getStatus().equals("Đang Giao Hàng")) { %>                           
                                    <option value="delivered" data-action="DeliveredWarrantyController">Delivered</option>
                                    <option value="refuse" data-action="RefuseWarrantyController">Refuse</option>
                                    <% }%>  
                                    <% if (warranty.getStatus().equals("Đã Giao Hàng")) { %>                           

                                    <% }%>  
                                </select>
                            </td>
                        </tr>
                    <script>
                        document.getElementById('statusSelect_<%=warranty.getOrderDetailId()%>').addEventListener('change', function () {
                            var selectedValue = this.value;
                            var action = this.options[this.selectedIndex].getAttribute('data-action');
                            if (selectedValue !== 'default' && action) {
                                window.location.href = action + "?orderDetailId=<%=warranty.getOrderDetailId()%>";
                            }
                        });
                    </script>
                    <%}
                    } else {
                    %>
                    <p></p>
                    <%
                        }
                    %>  
                    </tbody>

                </table>
            </div>
        </div>                    
    </body>
</html>

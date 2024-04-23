<%-- 
    Document   : admin_page
    Created on : Apr 15, 2024, 6:10:37 PM
    Author     : TUF
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="DTO.OrderSold"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/admin.css">
        <title>AdminHub</title>
    </head>
    <body>

        <%
            String desiredFormat = "yyyy-MM-dd";
            SimpleDateFormat sdf = new SimpleDateFormat(desiredFormat);%>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">AdminHub</span>
            </a>
            <ul class="side-menu top">
                <li>
                    <a href="AccountController">
                        <i class='bx bxs-group' ></i>
                        <span class="text">Account</span>
                    </a>
                </li>
                <li>
                    <a href="admin_product.jsp">
                        <i class='bx bxs-archive' ></i>
                        <span class="text">Product</span>
                    </a>
                </li>
                <li>
                    <a href="admin_category.jsp">
                        <i class='bx bx-add-to-queue'></i>
                        <span class="text">Category</span>
                    </a>
                </li>
                <li class="active">
                    <a href="RevenueController">
                        <i class='bx bx-money'></i>
                        <span class="text">Revenue</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="LogoutController" id="logoutButton" class="menu_button">
                        <i class='bx bxs-log-out-circle'></i>
                        <span class="text">Logout</span>
                    </a>

                    <!--Logout confirmation dialog--> 
                    <div id="logoutConfirmationDialog" class="modal">
                        <div class="modal-content">
                            <p>Are you sure you want to logout?</p>
                            <button id="confirmLogout">Logout</button>
                            <button id="cancelButton">Cancel</button>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <a href="#" class="nav-link"></a>
                <form action="#">
                    <div class="search">
                        <input type="text" class="searchTerm" placeholder=" Search.....">
                        <button type="submit" class="searchButton"><i class="bx bx-search"></i></button>
                    </div>
                </form>
                <input type="checkbox" id="switch-mode" hidden>
                <label for="switch-mode" class="switch-mode"></label>

                <a href="#" class="profile">
                    <img src="img/people.jpg">
                </a>
            </nav>
            <!-- NAVBAR -->
            <% ArrayList<OrderSold> orderList = (ArrayList<OrderSold>) session.getAttribute("ORDER_LIST");

                DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                double totalRevenue = 0;
                int i = 1;
                if (orderList != null) {
                    for (OrderSold o : orderList) {
                        totalRevenue += o.getTotalPrice();
                    }
                }
                
                String formatTotalRevenue = vnCurrencyFormat.format(totalRevenue);
            %>
            <!-- MAIN -->
            <main class="">
                <div class="head-title">
                    <div class="left">
                        <h1>Revenue</h1>
                    </div>
                </div>

                <div class="table-data-revenue">
                    <div class="order">
                        <div class="head">
                            <h3>Revenue Stream</h3>
                            <h3 style="margin-left: 600px;">Total Revenue: &nbsp; <%=formatTotalRevenue%></h3>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Img</th>
                                    <th>Name</th>
                                    <th>Quantity</th>
                                    <th>Customer Name</th>
                                    <th>Purchase Date</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% if (orderList != null) {
                                        for (OrderSold e : orderList) {
                                            // Format the date using the SimpleDateFormat object
                                            String formattedDate = sdf.format(e.getOrderDate());
                                            String formatTotalPrice = vnCurrencyFormat.format(e.getTotalPrice());
                                %>
                                <tr>
                                    <td><%=i++%></td>
                                    <td><img src="<%=e.getImage()%>" alt ="Loading"></td>
                                    <td><%=e.getToyName()%></td>
                                    <td><%=e.getQuantity()%></td>
                                    <td><%=e.getFullName()%></td>
                                    <td><%=formattedDate%></td>
                                    <td><%=formatTotalPrice%></td>
                                </tr>
                                <%}
                                    }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->

        <script src="js/admin.js"></script>
    </body>
</html>

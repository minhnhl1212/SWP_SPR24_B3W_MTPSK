<%-- 
    Document   : admin_page
    Created on : Apr 15, 2024, 6:10:37 PM
    Author     : TUF
--%>

<%@page import="DTO.Account"%>
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

    <style>
        .popup-form {
            display: none;
            width: 350px;
            height: 550px;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: whitesmoke;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>

    <body>


        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">AdminHub</span>
            </a>
            <ul class="side-menu top">
                <li class="active">
                    <a href="AccountController">
                        <i class='bx bxs-group' ></i>
                        <span class="text">Account</span>
                    </a>
                </li>
                <li>
                    <a href="AdminProductController">
                        <i class='bx bxs-archive' ></i>
                        <span class="text">Product</span>
                    </a>
                </li>
                <li>
                    <a href="AdminCategoryController">
                        <i class='bx bx-add-to-queue'></i>
                        <span class="text">Category</span>
                    </a>
                </li>
                <li>
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

                    <!--                     Logout confirmation dialog 
                                        <div id="logoutConfirmationDialog" class="modal">
                                            <div class="modal-content">
                                                 Change class from "close" to "cancelButton" 
                                                <p>Are you sure you want to logout?</p>
                                                <button id="confirmLogout" class="">Logout</button>
                                                <button id="cancelButton">Cancel</button>
                                            </div>
                                        </div>-->
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

            <!-- MAIN -->
            <main class="">
                <div class="head-title">
                    <div class="left">
                        <h1>Manage Account</h1>
                    </div>
                </div>

                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <h3>Account List</h3>
                            <button type="button" class="button-add-account" onclick="togglePopup()">Add new account</button>

                            <!-- Thêm popup form -->
                            
                            <div class="popup-form" id="popupForm">
                                <form action="">
                                    <h4>Add new account</h4>
                                </form>
                            </div>
                            
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>User Name</th>
                                    <th>Full Name</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                    <th>Role</th>
                                    <th>Active</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%ArrayList<Account> accountList = (ArrayList<Account>) session.getAttribute("ACCOUNT_LIST");
                                    int i = 1;
                                    if (accountList != null) {
                                        for (Account a : accountList) {
                                            if (a.getRoleId() != 1) {
                                %>
                                <!--                                <tr>
                                                                    <td>1</td>
                                                                    <td>minhle</td>
                                                                    <td>Nguyen Hoang Le Minh</td>
                                                                    <td>0912345678</td>
                                                                    <td>TPHCM</td>
                                                                    <td>Admin</td>
                                                                    <td><button id="toggleButton" class="button-bordered">Active</button></td>  
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>thaison</td>
                                                                    <td>Tran Thai Son</td>
                                                                    <td>0912345678</td>
                                                                    <td>TPHCM</td>
                                                                    <td>Admin</td>
                                                                    <td><button id="toggleButton" class="button-bordered">Active</button></td> 
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>khoa</td>
                                                                    <td>Le Nguyen Dang Khoa</td>
                                                                    <td>0912345678</td>
                                                                    <td>TPHCM</td>
                                                                    <td>Admin</td>
                                                                    <td><button id="toggleButton" class="button-bordered">Active</button></td> 
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>phucbh</td>
                                                                    <td>Bui Hoang Phuc</td>
                                                                    <td>0912345678</td>
                                                                    <td>TPHCM</td>
                                                                    <td>Staff</td>
                                                                    <td><button id="toggleButton" class="button-bordered">Active</button></td> 
                                                                </tr>
                                                                <tr>
                                                                    <td>5</td>
                                                                    <td>tien</td>
                                                                    <td>Nguyen Thanh Tien</td>
                                                                    <td>0912345678</td>
                                                                    <td>TPHCM</td>
                                                                    <td>Customer</td>
                                                                    <td><button id="toggleButton" class="button-bordered">Active</button></td> 
                                                                </tr>-->
                                <tr>
                                    <td><%=i++%></td>
                                    <td><%=a.getUserName()%></td>
                                    <td><%=a.getFullName()%></td>
                                    <td><%=a.getPhone()%></td>
                                    <td><%=a.getAddress()%></td>
                                    <!-- <td><%=a.getRole()%></td> -->
                                    <td>
                                        <select>
                                            <option>Staff</option>
                                            <option>Customer</option>
                                        </select>
                                    </td>
                                    <td><a href="AccountStatusController?id=<%=a.getUserId()%>&isActive=<%=a.isActive()%>"id="toggleButton" class="button-bordered">
                                            <% if (a.isActive()) {%>
                                            Active
                                            <%} else {%>
                                            Banned
                                            <%}%>
                                </tr>
                                <%}
                                        }
                                    }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script>
            function togglePopup() {
                var popup = document.getElementById("popupForm");
                popup.style.display = (popup.style.display === "block") ? "none" : "block";
            }
        </script>
        <script src="js/admin.js"></script>
    </body>
</html>

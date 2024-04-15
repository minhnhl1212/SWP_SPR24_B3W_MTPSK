<%-- 
    Document   : admin_page
    Created on : Apr 15, 2024, 6:10:37 PM
    Author     : TUF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/admin.css">
        <title>AdminHub</title>
    </head>
    <body>


        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">AdminHub</span>
            </a>
            <ul class="side-menu top">
                <li>
                    <a href="admin_account.jsp">
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
                    <a href="admin_revenue.jsp">
                        <i class='bx bx-money'></i>
                        <span class="text">Revenue</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="#" id="logoutButton" class="menu_button">
                        <i class='bx bxs-log-out-circle'></i>
                        <span class="text">Logout</span>
                    </a>

                    <!-- Logout confirmation dialog -->
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
                    <div class="form-input" hidden="">
                        <button type="submit" class="search-btn"><i class='bx bx-search'></i></button>
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
                        <h1>Revenue</h1>
                    </div>
                </div>

                <div class="table-data-revenue">
                    <div class="order">
                        <div class="head">
                            <h3>Revenue Streams</h3>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Name</th>
                                    <th>Customer Name</th>
                                    <th>Staff Name</th>
                                    <th>Purchase Date</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Xe Tải Công Trình</td>
                                    <td>Minh Le</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>April 15, 2024</td>
                                    <td>216.000 Đ</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Siêu Rô Bốt</td>
                                    <td>Minh Le</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>April 15, 2024</td>
                                    <td>209.000 Đ</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Xe Cảnh Sát</td>
                                    <td>Minh Le</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>April 15, 2024</td>
                                    <td>299.000 Đ</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Kỳ Lân Sắc Màu</td>
                                    <td>Minh Le</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>April 15, 2024</td>
                                    <td>216.000 Đ</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Bó Hoa LEGO</td>
                                    <td>Minh Le</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>April 15, 2024</td>
                                    <td>1.799.000 Đ</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Đồ Chơi Lắp Ráp Trực Thăng Cứu Hỏa LEGO CITY 60411</td>
                                    <td>Minh Le</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>April 15, 2024</td>
                                    <td>209.000 Đ</td>
                                </tr>


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

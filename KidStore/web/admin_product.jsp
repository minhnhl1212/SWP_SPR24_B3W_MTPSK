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
        <!-- ICON CSS-->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
            integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
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
                <li class="active">
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
                <li>
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
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
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
                        <h1>Manage Product</h1>
                    </div>
                </div>
                <ul class="notifications"></ul>
                <div class="table-data-product">
                    <div class="order">
                        <div class="head">
                            <h3>Product List</h3>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Staff</th>
                                    <th>Price</th>
                                    <th>Active</th>
                                    <th>Cancel</th>
                                </tr>
                            </thead>
                            <tbody>  
                                <tr>
                                    <td>1</td>
                                    <td>Mô Hình Đồ Chơi Detective Conan Carnival POP MART 6941848233653</td>
                                    <td>Hình ảnh</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>280.000 Đ</td>
                                    <td><button class="button-bordered" id="success">Approve</button></td>
                                    <td><button class="button-bordered" id="error">Cancel</button></td> 
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Mô Hình Universal Kung Fu Panda</td>
                                    <td>Hình ảnh</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>280.000 Đ</td>
                                    <td><button class="button-bordered" id="success">Approve</button></td> 
                                    <td><button class="button-bordered" id="error">Cancel</button></td> 
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Mô Hình Disney Stitch On A Date POP MART 6941848254726</td>
                                    <td>Hình ảnh</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>280.000 Đ</td>
                                    <td><button class="button-bordered" id="success">Approve</button></td> 
                                    <td><button class="button-bordered" id="error">Cancel</button></td> 
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Bộ Đường Đua Hot Wheels Xoắc Ốc Dốc Bay</td>
                                    <td>Hình ảnh</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>280.000 Đ</td>
                                    <td><button class="button-bordered" id="success">Approve</button></td> 
                                    <td><button class="button-bordered" id="error">Cancel</button></td> 
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Đồ Chơi Xe Cảnh Sát Biến Hình Paw Patrol The Movie - Chase</td>
                                    <td>Hình ảnh</td>
                                    <td>Nguyen Thanh Tien</td>
                                    <td>280.000 Đ</td>
                                    <td><button class="button-bordered" id="success">Approve</button></td> 
                                    <td><button class="button-bordered" id="error">Cancel</button></td> 
                                    <td></td>
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
        <script src="js/toast.js"></script>
    </body>
</html>

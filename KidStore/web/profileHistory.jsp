<%-- 
    Document   : profile
    Created on : Apr 17, 2024, 10:52:45 PM
    Author     : TUF
--%>

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
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>
        <div class="selection container row">

            <!-- SECTION LEFT -->

            <div class="col-md-12 col-lg-3">
                <div class="profile-img">
                    <img src="img/people.jpg" alt="User Avt"/>
                </div>
                <div class="profile-name">Lê Minh</div>
                <ul id="profile-function" class="list-group">
                    <li class="function-select list-group-item list-group-item-action" id="selected">
                        <a href="profileHistory.jsp" style="text-decoration: none">
                            <span class="text-profile">Lịch sử mua hàng</span>
                        </a>
                    </li>
                    <li class="function-select list-group-item list-group-item-action">
                        <a href="profileWarranty.jsp" style="text-decoration: none">
                            <span class="text-profile">Bảo hành sản phẩm</span>
                        </a>
                    </li>
                    <li class="function-select list-group-item list-group-item-action">
                        <a href="#" style="text-decoration: none">
                            <span class="text-profile">Logout</span>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- SECTION RIGHT -->

            <div class="section_right col-md-12 col-lg-9">
                <!-- Lịch sử mua hàng -->
                <div>
                    <div class="title-profile-cate">
                        <h1>Lịch sử mua hàng</h1>
                    </div>

                    <div class="toy-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Image</th>
                                    <th>Toy Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total Price</th>
                                    <th>Date of Purchase</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><img src="img/people.jpg" alt="User Avt" class="toy-item-img"/></td>
                                    <td>Thú bông</td>
                                    <td>2</td>
                                    <td>309.000đ</td>
                                    <td>618.000đ</td>
                                    <td>April 18, 2024</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="components/footerComponent.jsp" %>
</body>
</html>

<%-- 
    Document   : profile
    Created on : Apr 17, 2024, 10:52:45 PM
    Author     : TUF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html leng="en">
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
    </style>
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

                    <!-- đơn thứ 1-->
                    <div class="outer-box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row" >
                                    <div class="col-md-6">
                                        <div class="product-name" style="justify-content: flex-start; display: flex;">&#128340; Ngày mua: 01/01/2024</div>
                                    </div>
                                    <div class="col-md-6" >
                                        <div class="product-name" style="color: green; justify-content: flex-end; display: flex; font-weight: bold;">Hoàn Thành</div>
                                    </div>
                                </div>
                                <hr style="margin: 5px 0;">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-2" style="">
                                                <img src="https://vcdn-kinhdoanh.vnecdn.net/2023/06/07/CBNV-FPT-01-3113-1686139774.jpg" alt="Product Image" style="width: 100px; height: 100px; object-fit: cover; ">
                                            </div>
                                            <div class="col-md-6">
                                                <div class="product-name">Mô Hình Universal Kung Fu Panda</div>
                                                <div class="product-name">Số lượng: 1</div>
                                                <div class="product-name">Danh mục: Đồ chơi sưu tầm</div>
                                                <div class="product-name">Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS</div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="product-price" style="display: flex; align-items: center; justify-content: flex-end; "><del>260.000 đ</del> -> 200.000 đ</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr style="margin: 10px 0;">
                                <div class="row">
                                    <div class="col-md-12" >
                                        <div class="">
                                            <div class="product-name" style=" display: flex;justify-content: flex-end;"><h5>&#36; Thành tiền: 260.000 đ</h5></div>                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- đơn thứ 2-->
                    <div class="outer-box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row" >
                                    <div class="col-md-6">
                                        <div class="product-name" style="justify-content: flex-start; display: flex;">&#128340; Ngày mua: 01/01/2024</div>
                                    </div>
                                    <div class="col-md-6" >
                                        <div class="product-name" style="color: green; justify-content: flex-end; display: flex; font-weight: bold;">Hoàn Thành</div>
                                    </div>
                                </div>
                                <hr style="margin: 5px 0;">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-2" style="">
                                                <img src="https://vcdn-kinhdoanh.vnecdn.net/2023/06/07/CBNV-FPT-01-3113-1686139774.jpg" alt="Product Image" style="width: 100px; height: 100px; object-fit: cover; ">
                                            </div>
                                            <div class="col-md-6">
                                                <div class="product-name">Mô Hình Universal Kung Fu Panda</div>
                                                <div class="product-name">Số lượng: 1</div>
                                                <div class="product-name">Danh mục: Đồ chơi sưu tầm</div>
                                                <div class="product-name">Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS</div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="product-price" style="display: flex; align-items: center; justify-content: flex-end; "><del>260.000 đ</del> -> 200.000 đ</div>
                                            </div>
                                        </div>

                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-2" style="">
                                                <img src="https://vcdn-kinhdoanh.vnecdn.net/2023/06/07/CBNV-FPT-01-3113-1686139774.jpg" alt="Product Image" style="width: 100px; height: 100px; object-fit: cover; ">
                                            </div>
                                            <div class="col-md-6">
                                                <div class="product-name">Mô Hình Universal Kung Fu Panda</div>
                                                <div class="product-name">Số lượng: 1</div>
                                                <div class="product-name">Danh mục: Đồ chơi sưu tầm</div>
                                                <div class="product-name">Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr style="margin: 10px 0;">
                                <div class="row">
                                    <div class="col-md-12" >
                                        <div class="">
                                            <div class="product-name" style=" display: flex;justify-content: flex-end;"><h5>&#36; Thành tiền: 260.000 đ</h5></div>                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="components/footerComponent.jsp" %>
</body>
</html>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : News
    Created on : Apr 15, 2024, 4:02:53 PM
    Author     : trant
--%>


<%@page import="DTO.News"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>News</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="css/footer.css" rel="stylesheet"/>

        <!-- News css -->
        <link href="news-assets/css/media_query.css" rel="stylesheet" type="text/css"/>
        <!--        <link href="news-assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>-->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="news-assets/css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <link href="news-assets/css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="news-assets/css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap CSS -->
        <link href="news-assets/css/style_1.css" rel="stylesheet" type="text/css"/>
        <!-- Modernizr JS -->
        <script src="news-assets/js/modernizr-3.5.0.min.js"></script>
    </head>
    <body>
        <!-- navbar -->
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container-fluid pb-4 pt-4 paddding">
            <div class="container paddding">
                <div class="row mx-0">
                    <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                        <div>
                            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">News</div>
                        </div>
                        <div class="news-element">
                            <div class="row pb-4">
                                <div class="col-md-5">
                                    <div class="fh5co_hover_news_img">
                                        <div class="fh5co_news_img"><img src="https://www.mykingdom.com.vn/cdn/shop/articles/ao-thuat-eddys-magic-50-chieu_thumbnail.jpg?v=1713350545" alt=""/></div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <a href="#" class="fh5co_magna py-3">Có Gì Trong Bộ Ảo Thuật Eddy'S Magic 50 Chiêu?</br></a> 
                                    <a href="#" class="fh5co_mini_time py-2"> 17.04.2024 BTV Trần Diệu </a>
                                    <div class="fh5co_consectetur"> Ảo Thuật Eddy'S Magic 50 Chiêu là một sản phẩm cực hot tại Mykingdom, thỏa mãn đam mê trở thành ảo thuật gia của các bạn nhỏ. 
                                        Với các đạo cụ chuyên nghiệp cùng DVD hướng dẫn cực kỳ chi tiết, sản phẩm đã giúp rất nhiều bạn nhỏ đánh lừa đôi mắt của người xem. 
                                        Không chần chờ gì nữa, chúng ta hãy cùng khám phá xem bộ đồ chơi này có gì nhé!
                                    </div>
                                    <a href="#" class="xem-them">Xem thêm</a>
                                </div>
                            </div>
                        </div>
                        <div class="row pb-4">
                            <div class="col-md-5">
                                <div class="fh5co_hover_news_img">
                                    <div class="fh5co_news_img"><img src="https://www.mykingdom.com.vn/cdn/shop/articles/mykingdom-mua-qua-1-6-cho-be-image.jpg?v=1686018723" alt=""/></div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <a href="#" class="fh5co_magna py-3">Ý Tưởng Mua Quà Tặng 1/6 Cho Bé Phát Triển Kỹ Năng Và Tư Duy</br></a> 
                                <a href="#" class="fh5co_mini_time py-2"> 16.04.2024 BTV Trần Diệu </a>
                                <div class="fh5co_consectetur">Quốc tế Thiếu nhi hay còn gọi là Tết thiếu nhi diễn ra vào ngày 1/6 hằng năm. Đây là dịp người lớn thể hiện tình cảm, sự quan tâm của mình dành cho bé thông qua những món quà tặng 1/6 cũng như những lời chúc tốt đẹp hay những hoạt động vui chơi lý thú. 
                                    Vậy ba mẹ đã có ý tưởng gì để tạo bất ngờ cho bé vào ngày đặc biệt này chưa? 
                                    Nếu vẫn còn phân vân, thì ba mẹ đừng bỏ qua những gợi ý mua quà tặng 1/6 cho bé trai và bé gái dưới đây nhé!
                                </div>
                                <a href="#" class="xem-them">Xem thêm</a>
                            </div>
                        </div>
                        <div class="row pb-4">
                            <div class="col-md-5">
                                <div class="fh5co_hover_news_img">
                                    <div class="fh5co_news_img"><img src="https://www.mykingdom.com.vn/cdn/shop/articles/1-6-la-ngay-gi_thumbnail.jpg?v=1713171476" alt=""/></div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <a href="#" class="fh5co_magna py-3">1/6 Là Ngày Gì? Nguồn Gốc Và Ý Nghĩa Trọng Đại Của Ngày Lễ Này</br></a> 
                                <a href="#" class="fh5co_mini_time py-2"> 15.04.2024 BTV Trần Diệu </a>
                                <div class="fh5co_consectetur"> 1/6 là ngày gì và tại sao trẻ em lại mong chờ ngày lễ này đến thế? Bạn hãy cùng Mykingdom giải đáp thắc mắc này và tìm hiểu thêm về nguồn gốc cũng như ý nghĩa của ngày Quốc tế thiếu nhi nhé.
                                    Ngày 1/6 Có Được Nghỉ Không?
                                    Ngày 1/6/2024 năm nay sẽ rơi vào thứ Bảy, thế nhưng Quốc tế thiếu nhi vốn nằm trong danh sách ngày nghỉ lễ theo quy định của nước ta, vậy nên người lao động sẽ không được nghỉ bù.
                                </div>
                                <a href="#" class="xem-them">Xem thêm</a>
                            </div>
                        </div>
                        <div class="row pb-4">
                            <div class="col-md-5">
                                <div class="fh5co_hover_news_img">
                                    <div class="fh5co_news_img"><img src="https://www.mykingdom.com.vn/cdn/shop/articles/the-thao-danh-cho-tre-theo-tung-do-tuoi_thumbnail.jpg?v=1713151557" alt=""/></div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <a href="#" class="fh5co_magna py-3">Cách Chọn Môn Thể Thao Dành Cho Trẻ Theo Từng Độ Tuổi</br></a> 
                                <a href="#" class="fh5co_mini_time py-2"> 15.04.2024 BTV Trần Diệu </a>
                                <div class="fh5co_consectetur"> Thể thao dành cho trẻ theo từng độ tuổi ảnh hưởng rất lớn đối với sự phát triển toàn diện của con. 
                                    Chơi thể thao quá sức hoặc quá nhẹ đều không thể mang lại hiệu quả mong muốn.
                                </div>
                                <a href="#" class="xem-them">Xem thêm</a>
                            </div>
                        </div>
                        <div class="row pb-4">
                            <div class="col-md-5">
                                <div class="fh5co_hover_news_img">
                                    <div class="fh5co_news_img"><img src="https://www.mykingdom.com.vn/cdn/shop/articles/do-choi-phat-trien-tri-tue-cho-be_thumbnail.jpg?v=1712919766" alt=""/></div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <a href="#" class="fh5co_magna py-3">List 10 Món Đồ Chơi Phát Triển Trí Tuệ Cho Bé</br></a> 
                                <a href="#" class="fh5co_mini_time py-2"> 12.04.2024 BTV Trần Diệu </a>
                                <div class="fh5co_consectetur">
                                    Rất nhiều phụ huynh muốn mua đồ chơi phát triển trí tuệ cho bé nhưng chưa biết nên mua gì. Vậy nên KidStore đã lập danh sách dưới đây để bạn tham khảo. Đồ Chơi Học Số Và Chữ Cái  Bộ học chữ và số là món đồ chơi phát triển trí tuệ cho bé từ 3 tuổi. Ở độ tuổi này trẻ tiếp thu kiến thức cực kỳ nhanh chóng, có thể nói là độ tuổi vàng để học tập. Sản phẩm có bảng chữ cái tiếng Anh cùng các hình học nhiều màu sắc cũng như ảnh về đồ vật, con vật theo số đếm. Các hình ảnh minh họa vô cùng sống động và nhiều màu sắc nên có thể giúp bé học vui hơn mà không bị chán. 
                                    Hơn nữa, sản phẩm còn có các nút bật lên/hạ xuống, giúp trẻ tăng cường kỹ năng quan sát.
                                </div>
                                <a href="#" class="xem-them">Xem thêm</a>
                            </div>
                        </div>
                        <div class="row pb-4">
                            <div class="col-md-5">
                                <div class="fh5co_hover_news_img">
                                    <div class="fh5co_news_img"><img src="https://www.mykingdom.com.vn/cdn/shop/articles/vi-sao-can-giup-tre-phat-trien-the-luc-trong-dip-he_thumbnail.jpg?v=1712891007" alt=""/></div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <a href="#" class="fh5co_magna py-3">Vì Sao Cần Giúp Trẻ Phát Triển Thể Lực Trong Dịp Hè?</br></a> 
                                <a href="#" class="fh5co_mini_time py-2"> 12.04.2024 BTV Trần Diệu </a>
                                <div class="fh5co_consectetur"> Vì sao cần giúp trẻ phát triển thể lực trong dịp hè là câu hỏi khiến phụ huynh băn khoăn, bởi họ cho rằng trẻ nên được làm những gì mình muốn sau những giờ học tập mệt mỏi. 
                                    Bạn hãy cùng Mykingdom giải đáp thắc mắc ấy qua bài viết này nhé!
                                </div>
                                <a href="#" class="xem-them">Xem thêm</a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row mx-0 animate-box" data-animate-effect="fadeInUp">
                    <div class="col-12 text-center pb-4 pt-4">
                        <a href="#" class="btn_mange_pagging"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; Previous</a>
                        <a href="#" class="btn_pagging">1</a>
                        <a href="#" class="btn_pagging">2</a>
                        <a href="#" class="btn_pagging">3</a>
                        <a href="#" class="btn_pagging">...</a>
                        <a href="#" class="btn_mange_pagging">Next <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

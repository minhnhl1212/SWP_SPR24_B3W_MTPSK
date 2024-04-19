<%-- 
    Document   : News
    Created on : Apr 15, 2024, 4:02:53 PM
    Author     : trant
--%>

<%@page import="DTO.Account"%>
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
        <link href="css/news.css" rel="stylesheet"/>
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

                        <%
                            Account acc = (Account) session.getAttribute("acc");
                            if (acc != null) {
                        %>

                        <button class="btn-news"><h4>Thêm Tin Tức</h4></button>
                        <form action="AddNewsController">
                            <div class="new-containter">
                                <label for="title">Tittle</label>
                                <input type="text" name="title" id="title" required></br>
                                <label for="image">Image</label>
                                <input type="text" name="image" id="image" required></br>
                                <label for="date">Date</label>
                                <input type="date" id="date" name="date" required></br>
                                <label for="description">Description</label>
                                <input type="text" id="description" name="description" required></br>
                                <input type="hidden" name="userId" value="<%=acc.getUserId()%>">
                                <input type="submit" value="Add">
                            </div>
                        </form>
                        <p style="color: green">${ADD_NEWS_SUCCESS}</p>
                        <p style="color: red">${ADD_NEWS_FAILED}</p>
                        <%} else {%>
                        <p>Khong Co Tai Khoan Dang Nhap</p>
                        <%}%>

                        <%
                            ArrayList<News> newsList = (ArrayList<News>) session.getAttribute("NEWS_LIST");
                            if (newsList != null) {
                                for (News news : newsList) {
                        %>

                        <div class="news-element">
                            <div class="row pb-4">
                                <div class="col-md-5">
                                    <div class="fh5co_hover_news_img">
                                        <div class="fh5co_news_img"><img src="<%=news.getImage()%>" alt=""/></div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <a href="#" class="fh5co_magna py-3"><%=news.getTitle()%></br></a> 
                                    <a href="#" class="fh5co_mini_time py-2"> <%=news.getDate()%> <%=news.getUserId()%> </a>
                                    <div class="fh5co_consectetur"> <%=news.getDescription()%></div>   
                                </div>
                            </div>
                        </div>

                        <%}
                        } else {
                        %>
                        <p>Khong co danh sach News</p>
                        <%
                            }
                        %>


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

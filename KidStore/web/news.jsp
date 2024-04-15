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
        <title>News Detail</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico">
        <!-- Bootstrap 4.6.2 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/footer.css" rel="stylesheet">
        <style>
            /* Custom styles */
            .news-item {
                margin-bottom: 20px;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .news-image {
                max-width: 100%;
                height: auto;
                margin-bottom: 10px;
            }
            .description {
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 3; /* Number of lines to show */
                -webkit-box-orient: vertical;
            }
        </style>
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-12">
                    <h1>News </h1>
                    <%
                        ArrayList<News> newsList = (ArrayList<News>) request.getAttribute("NEWS_LIST");
                        if (newsList != null) {
                            for (News news : newsList) {
                    %>
                    <div class="news-item">
                        <h3><%=news.getName()%></h3>
                        <img src="<%=news.getImage()%>" class="news-image" alt="<%=news.getName()%>">
                        <p><%=news.getDescription()%></p>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
        </div>

        <p>${NEWS_LIST_ERROR}</p>

        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

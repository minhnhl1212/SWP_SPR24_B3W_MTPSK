<%-- 
    Document   : News
    Created on : Apr 15, 2024, 4:02:53 PM
    Author     : trant
--%>


<%@page import="DTO.News"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<News> newsList = (ArrayList<News>) request.getAttribute("NEWS_LIST");
            if (newsList != null) {
                for (News news : newsList) {
        %>
    <li><%=news.getName()%></li>
    <li><img src="<%=news.getImage()%>"</li>
    <li><%=news.getDescription()%></li>
        <%
                }
            }
        %>



    <p>${NEWS_LIST_ERROR}</p>
</body>
</html>

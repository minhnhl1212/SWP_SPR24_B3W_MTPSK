<%@page import="DTO.Category"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>STAFF</title>
        <link rel="stylesheet" href="css/styles.css">

    </head>
    <body>
        <header>
            <h1>Manager Category</h1>
            <a style="background-color: greenyellow; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCategory.jsp">Manager Category</a>
            <a style="background-color: paleturquoise; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Product</a>
            <a style="background-color: wheat; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCustomer.jsp">Manager Customer</a>
            <a style="background-color: #0d6efd; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerOther.jsp">Manager Other</a>
        </header>

        <div class="container">

            <section id="product-list">
                <h2>Category</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Category Name</th> 
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            ArrayList<Category> productList = (ArrayList<Category>) request.getAttribute("categoryList");
                            if (productList != null) {
                                for (Category category : productList) {
                        %>
                        <tr>
                            <td>${c.cid}</td>
                            <td>${c.cname}</td>
                            <td>
                                <a href="edit_product.jsp?id=${c.cid}">Edit</a>
                                <a href="delete_product.jsp?id=${c.cid}">Delete</a>
                            </td>
                        </tr>
                        <% }
                    } else { %>
                        <tr><td colspan="5">No Category</td></tr>
                        <% }%>
                    </tbody>
                </table>
            </section>


            <section id="add-category-form">
                <h2>Add Category</h2>
                <form action="add_product.jsp" method="post">
                    <label for="productName">Name:</label>
                    <input type="text" id="categoryName" name="categoryName" required> 

                    <label for="categoryAction">Action:</label>
                    <textarea id="categoryAction" name="categoryAction"></textarea>

                    <button type="submit">Add new Category</button>
                </form>
            </section>
        </div>

        <script src="js/admin.js"></script>
    </body>
</html>





<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Category"%>
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
            <h1>Manager Product</h1>
            <a style="background-color: greenyellow; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCategory.jsp">Manager Category</a>
            <a style="background-color: paleturquoise; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Product</a>
            <a style="background-color: wheat; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCustomer.jsp">Manager Customer</a>
            <a style="background-color: #0d6efd; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerOther.jsp">Manager Other</a>
        </header>

        <div class="container">

            <section id="product-list">
                <h2>Product</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>User Name</th>
                            <th>Password</th>
                            <th>Is Sell</th>
                            <th>Active</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            ArrayList<Category> productList = (ArrayList<Category>) request.getAttribute("productList");
                            if (productList != null) {
                                for (Category product : productList) {
                        %>
                        <tr>
                            <td>${p.uid}</td>
                            <td>${p.user}</td>
                            <td>${p.pass}</td>
                            <td>${p.isSell}</td>
                            <td>
                                <a href="edit_product.jsp?id=${p.uid}">Edit</a>
                                <a href="delete_product.jsp?id=${p.uid}">Delete</a>
                            </td>
                        </tr>
                        <% }
                        } else { %>
                        <tr><td colspan="5">No Customers</td></tr>
                        <% }%>
                    </tbody>
                </table>
            </section>


            <section id="add-product-form">
                <h2>Add Customers</h2>
                <form action="ManagerProduct.jsp" method="post">
                    <label for="productName">Name:</label>
                    <input type="text" id="productName" name="productName" required>

                    <label for="productPrice">Price:</label>
                    <input type="number" id="productPrice" name="productPrice" required>

                    <label for="productAction">Action:</label>
                    <textarea id="productAction" name="productAction"></textarea>

                    <button type="submit">Add new Customers</button>
                </form>
            </section>
        </div>

        <script src="js/admin.js"></script>
    </body>
</html>





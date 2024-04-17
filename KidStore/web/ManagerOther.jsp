<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Other"%>
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
                            <th>Account Id</th>
                            <th>Total Price</th>
                            <th>Created Date</th>
                            <th>Shipping Id</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            ArrayList<Other> productList = (ArrayList<Other>) request.getAttribute("productList");
                            if (productList != null) {
                                for (Other product : productList) {
                        %>
                            <tr>
                                <td>${p.getId()}</td>
                                <td>${p.getAccountId()}</td>         
                                <td>${p.getTotalPrice()} $</td>
                                <td>${p.getCreatedDate()} $</td>
                                <td>${p.getShippingId()} $</td>
                            <td>
                                <a href="edit_product.jsp?id=${p.getId()}">Edit</a>
                                <a href="delete_product.jsp?id=${p.getId()}">Delete</a>
                            </td>
                            </tr>
                        <% }
                    } else { %>
                        <tr><td colspan="5">No Others</td></tr>
                        <% }%>
                    </tbody>
                </table>
            </section>
                    <button type="button" class="btn btn-primary" onclick="back()">Back to home</button>
        </div>

            <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCategories}" var="o">
                                        <option value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="js/admin.js"></script>
    </body>
</html>





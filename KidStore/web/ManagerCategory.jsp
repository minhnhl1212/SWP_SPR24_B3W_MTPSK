<%@page import="DTO.Account"%>
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
        <link rel="stylesheet" href="css/ManagerCategory.css">

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

            <div id="product-list">
                <h2>Toy Category</h2>
            </div>

            <button onclick="toggleAddCategoryForm()" class="add">Add New Category</button>
            <p style="color: green">${ADD_CATEGORY_SUCCESS}</p>
            <p style="color: red">${ADD_CATEGORY_FAILED}</p>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Category Name</th>                        
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Category> categoryList = (ArrayList<Category>) session.getAttribute("CATEGORY_LIST_ALL");
                        Account acc = (Account) session.getAttribute("acc");
                        if (categoryList != null) {
                            for (Category category : categoryList) {
                    %>
                    <tr>
                        <td><%=category.getCategoryId()%></td>
                        <td><%=category.getCategoryName()%></td>                   
                       <td class="col-2">
                       <a href="DisableCategoryController">Disable</a>                       
                </td>
                </tr>
                <%}
                } else {
                %>
                <p>Không có loại đồ chơi nào</p>
                <%
                    }
                %>                
                </tbody>
            </table>

            <div class="wrap">
                <div class="addCategory overlay">
                    <div id="add-product-form">                    
                        <div>
                            <form class="form" action="AddCategoryController">
                                <h2>Add New Toy Category</h2>
                                <label for="nameCategory">Name Category</label></br>
                                <input type="text" id="productName" name="nameCategory" required></br>      
                                <input name="nameStaff" type="hidden" value="<%=acc.getFullName()%>">
                                <button type="submit">Add</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <script src="js/admin.js"></script>
    </body>
    <script>
                function toggleAddCategoryForm() {
                    var addCategoryForm = document.querySelector('.addCategory');
                    if (addCategoryForm.style.display === 'none') {
                        addCategoryForm.style.display = 'block';

                    } else {
                        addCategoryForm.style.display = 'none';

                    }
                }
    </script>
</html>





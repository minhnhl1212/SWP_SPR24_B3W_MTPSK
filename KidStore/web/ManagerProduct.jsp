<%@page import="DTO.Category"%>
<%@page import="DTO.Toy"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>STAFF</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/ManagerProduct.css">

    </head>
    <body>
        <header>
            <h1>Manager Product</h1>
            <a style="background-color: greenyellow; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCategory.jsp">Manager Category</a>
            <a style="background-color: paleturquoise; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerProduct.jsp">Manager Product</a>
            <a style="background-color: wheat; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerCustomer.jsp">Manager Customer</a>
            <a style="background-color: #0d6efd; color: #664d03" class="btn btn-outline-dark mt-auto" href="ManagerOther.jsp">Manager Other</a>
        </header>

        <div id="product-list">
            <h2>Product</h2>
        </div>

        <button onclick="toggleAddProductForm()" class="add">Add New Product</button>
        <p style="color: red">${ADD_TOY_SUCCESS}</p>
        <p style="color: red">${ADD_TOY_FAILED}</p>



        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Discount</th>
                    <th>Warranty Time</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList<Toy> toyList = (ArrayList<Toy>) session.getAttribute("TOY_LIST");
                    if (toyList != null) {
                        for (Toy toy : toyList) {
                %>
                <tr>
                    <td><%=toy.getToyId()%></td>
                    <td><%=toy.getToyName()%></td>
                    <td><img src="<%=toy.getImage()%>" alt="Toy Image" style="max-width: 10%"></td>
                    <td><%=toy.getPrice()%></td>
                    <td>Category</td>
                    <td><%=toy.getDiscount()%></td>
                    <td><%=toy.getWarranty_time()%></td>
                    <td class="col-2">
                        <a href="">Edit</a>                       
                        <a href="">Delete</a>
                    </td>
                </tr>
                <%}
                } else {
                %>
            <p>Không có đồ chơi nào</p>
            <%
                }
            %>                
        </tbody>
    </table>

    <div class="wrap">
        <div class="addProduct overlay">
            <div id="add-product-form">                    
                <div>
                    <form action="AddToyController">
                        <h2>Add New Toy</h2>
                        <label for="productName">Name</label></br>
                        <input type="text" id="productName" name="productName" required></br>

                        <label for="image">Image</label></br>
                        <input type="text" id="image" name="image" required></br>

                        <label for="price">Price</label></br>
                        <input type="number" id="price" name="price" required></br>
                        <%
                            ArrayList<Category> categoryList = (ArrayList<Category>) session.getAttribute("CATEGORY_LIST");
                            if (categoryList != null) {
                        %>
                        <label for="description">Description</label></br>
                        <input type="text" id="description" name="description" required></br>                             

                        <label for="category">Category</label></br>

                        <select name="idCategory" id="category">
                            <%
                                for (Category category : categoryList) {
                            %>
                            <option value="<%=category.getCategoryId()%>"><%=category.getCategoryName()%></option>
                            <%}
                            } else {
                            %>
                            <p>Không có loại đồ chơi nào</p>
                            <%
                                }
                            %>
                        </select>                        


                        <label for="discount">Discount</label></br>
                        <input type="number" id="discount" name="discount" required></br>

                        <label for="warrantyTime">Warranty Time</label></br>
                        <input type="date" id="warrantyTime" name="warrantyTime" required></br>

                        <button type="submit">Add New Toy</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
</body>
<script>
            function toggleAddProductForm() {
                var addProductForm = document.querySelector('.addProduct');
                if (addProductForm.style.display === 'none') {
                    addProductForm.style.display = 'block';
                    addProductForm.classList.add("overlay");
                } else {
                    addProductForm.style.display = 'none';
                    addProductForm.classList.remove("overlay");
                }
            }
</script>
</html>





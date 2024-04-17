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

        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>name</td>
                    <td>image</td>
                    <td>price</td>
                    <td>status</td>
                    <td class="col-2">
                        <a href="">Edit</a>                       
                        <a href="">Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>name</td>
                    <td>image</td>
                    <td>price</td>
                    <td>status</td>
                    <td>
                        <a href="">Edit</a>                       
                        <a href="">Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>name</td>
                    <td>image</td>
                    <td>price</td>
                    <td>status</td>
                    <td>
                        <a href="">Edit</a>                       
                        <a href="">Delete</a>
                    </td>
                </tr>
            </tbody>
        </table>
        </br>
        </br>
        </br>
        </br>
        </br>

        <div class="wrap">
            <div class="addProduct overlay">
                <div id="add-product-form">                    
                    <div>
                        <form action="AddToyController">
                            <h2>Add Product</h2>
                            <label for="productName">Name</label></br>
                            <input type="text" id="productName" name="productName" required></br>

                            <label for="image">Image</label></br>
                            <input type="text" id="productName" name="image" required></br>

                            <label for="price">Price</label></br>
                            <input type="number" id="productPrice" name="price" required></br>

                            <label for="description">Description</label></br>
                            <input type="text" id="productName" name="description" required></br>

                            <label for="category">Category</label></br>
                            <input type="text" id="productName" name="category" required></br>

                            <button type="submit">Add new Product</button>
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





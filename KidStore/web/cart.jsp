<%@page import="java.util.HashMap"%>
<%@page import="DTO.Toy"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cart</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/footer.css" rel="stylesheet"/>
    </head>
    <%  int i = 1;
        double sum = 0;
        HashMap<Toy, Integer> cartItems = (HashMap<Toy, Integer>) session.getAttribute("cartList");%>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section -->
        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <%if (cartItems != null) {%>
                <h3>Your Cart</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Image</th>
                            <th scope="col">Toy Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total Price</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (HashMap.Entry<Toy, Integer> c : cartItems.entrySet()) {%>
                    <form action="update-quantity">
                        <tr>
                        <input type="hidden" name="productId" value="Id"/>
                        <th scope="row"><%=i++%></th>
                        <td><img src="<%=c.getKey().getImage()%>" width="50"/></td>
                        <td><%=c.getKey().getToyName()%></td>
                        <td><%=c.getKey().getPrice()%></td>
                        <td><input onchange="this.form.submit()" type="number" name="quantity" value="<%=c.getValue()%>"/></td>
                        <td><% sum = c.getKey().getPrice() * c.getValue();%><%=c.getKey().getPrice() * c.getValue()%></td>
                        <td><a href="delete-cart?productId=<%=c.getKey().getToyId()%>" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Delete</a></td>
                        </tr>
                    </form>
                    <%}%>
                    </tbody>
                </table>
                <%} else {%>
                <h1>Your Cart Is Empty</h1>
                <%}%>
                <h3>Total Amount: <%=sum%></h3>
                <a href="checkout" class="btn btn-success w-25">Check out</a>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
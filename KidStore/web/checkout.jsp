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
        <title>Checkout</title>
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

        <div class="container" style="min-height: 1000px">
            <h1>Checkout</h1>
            <div class="row">
                <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
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
                        <%}%>
                        </tbody>
                    </table>
                    <h3>Total Amount: <%=sum%></h3>
                </div>

                <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                    <h3>Information</h3>
                    <form action="checkout" method="POST">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="note" class="form-label">Note</label>
                            <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <%@include file="components/footerComponent.jsp" %>
</body>
</html>

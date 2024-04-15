<%-- 
    Document   : signup
    Created on : Apr 15, 2024, 11:03:47 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
    </head>
    <body>
        <div>
            <form action="MainController" method="POST" class="form-signup">
                <p style="text-align:center">OR</p>
                <input type="text" id="user-email" class="form-control" placeholder="Username" required autofocus="" name="userName">
                <input type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="" name="password">
                <input type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="" name="confirmPassword">
                <span style="color: green">${SIGNUP_SUCCESS}</span>
                <span style="color: red">${SIGNUP_ERROR}</span>
                <span style="color: red">${PASS_NOT_MATH}</span>
                <button class="btn btn-primary btn-block" type="submit" name="btAction" value="Sign Up"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
        </div>
    </body>
</html>

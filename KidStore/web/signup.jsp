<%-- 
    Document   : signup
    Created on : Apr 15, 2024, 11:03:47 AM
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
        <link rel="stylesheet" type="text/css" href="login.css">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <%--Bootstrap 4.6.2--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet"/>
        <link href="css/footer.css" rel="stylesheet"/>
        <script src="login.js"></script>
    </head>
    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <img src="img/background-register.jpg" style="max-width: 100%; height: 100vh; margin-left: -1vw">
                </div>
                <div class="col-md-5">
                    <form style="margin-top: 10%" action="SignUpController" method="post" onsubmit="return validateForm()">
                        <h1 style="text-align: center; font-weight: 800; color: #d8ffde; text-shadow: 4px 3px 10px #1a451b">REGISTER</h1>
                        <div style="margin-left: 3%">
                            <label for="fullname">Full Name</label><br>
                            <input style="border-style: none none solid none; margin-bottom: 4%; width: 93%" type="text" id="fullname" name="userName"></br>
                            <label for="email">Email or Phone Number</label></br>
                            <input style="border-style: none none solid none; margin-bottom: 4%; width: 93%" type="text" id="email" name="email"></br>
                            <label for="password">Password</label></br>
                            <input style="border-style: none none solid none; margin-bottom: 4%; width: 93%" type="password" id="password" name="password"></br>
                            <label for="confirmpassword">Confirm Password</label></br>
                            <input style="border-style: none none solid none; margin-bottom: 4%; width: 93%" type="password" id="confirmpassword" name="confirmPassword"></br>
                            <input style="border-radius: 40px; font-size: 24px; font-weight: 800; color: white; margin: 2% 19%; padding: 2% 25%; background: linear-gradient(90deg, rgba(58,116,180,1) 0%, rgba(29,161,253,1) 50%, rgba(192,196,19,1) 100%);; border: none" type="submit" value="Register">
                            <p style="color: green">${SIGNUP_SUCCESS}</p>
                            <p style="color: red">${SIGNUP_ERROR}</p>
                            <p style="color: red">${PASS_NOT_MATH}</p>
                            <a style="color: #007bff; font-size: 16px; margin-left: 1%;" href="login.jsp">Log in</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>



    </body>
</html>
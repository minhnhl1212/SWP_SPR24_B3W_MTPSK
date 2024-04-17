<%-- 
    Document   : login
    Created on : Apr 11, 2024, 4:14:18 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/login.css">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <script src="login.js"></script>
        <title></title>
        <script>
            function doForgetPass() {
                window.location.href = "forgetPassword";
            }
        </script>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="MainController">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>${mess}</b></div>
                <input type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="" name="Username">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="Password">
                <span style="color: red">${LOGIN_ERROR}</span>
                <button class="btn btn-success btn-block" type="submit" value="Sign in" name="btAction"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-success btn-block" type="button" onclick="doforgetPass()"><i class="fa-light fa-repeat"></i> forget Password</button>
                <hr>
                <!-- <p>Don't have an account!</p>  -->
                
                <a href="signup.jsp">Đăng ký</a>
                
            </form>

                
            <br>

        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/login.js"></script>
    </body>
</html>




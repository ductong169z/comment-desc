<%-- 
    Document   : 404
    Created on : Jul 19, 2020, 9:11:01 PM
    Author     : Quan Duc Loc CE140037 (SE1401)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/7a37b2739f.js"></script>
        <style>
            .error {
                margin: 0 auto;
                text-align: center;
                width: 100%;
                height: 100%;
                position: absolute; top: 0; right: 0; bottom: 0; left: 0;
            }

            .error-code {
                bottom: 60%;
                color: #FFFFFF;
                font-size: 96px;
                font-family: 'Raleway', sans-serif;
                line-height: 100px;
            }

            .font-bold{
                color: #FFFFFF;
                margin-bottom: 2%!important;
            }

            .error-desc {
                font-size: 20px;
                color: #FFFFFF;
            }

            .m-b-10 {
                margin-bottom: 5%!important;
            }

            .m-b-20 {
                margin-bottom: 5%!important;
            }

            .m-t-20 {
                margin-top: 17%!important;
            }

            .login-detail-panel-button {
                font-size: 20px;
                color: #fdfff5;
                border-radius: 30px !important;
                text-decoration: none;
                border-color: #FFFFFF;
            }

        </style>
        <title>404 Not Found - WibuAnimeList</title>
    </head>
    <body>
        <jsp:include page='header.jsp'/>
        <div class="error" style="background-image: url('images/bg-14.jpg'); background-repeat: no-repeat; background-size: cover; background-position: 10% 90%; background-attachment: fixed;">
            <div class="error-code m-b-10 m-t-20">404 Not Found</div>
            <h3 class="font-bold">We couldn't find the page...</h3>

            <div class="error-desc">
                <div>
                    <a class="login-detail-panel-button btn" href="index">
                        <i class="fa fa-arrow-left"></i>
                        Go back to Homepage                        
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>


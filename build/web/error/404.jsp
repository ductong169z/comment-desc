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
                font-size: 40px;
                color: #fdfff5;
                border-radius: 50px !important;
                border-width: 3px;
                text-decoration: none;
                border-color: #FFFFFF;
            }
            
        </style>
        <title>404 Not Found - Comment Page</title>
    </head>
    <body>
        <div class="error" style="background-image: url('images/bg-19.png'); background-repeat: no-repeat; background-size: cover; background-position: 10% 90%; background-attachment: fixed;">
            <div class="error-code m-b-10 m-t-20" style="font-family: 'Segoe UI';">404 Not Found</div>
            <!--            <h2 class="font-bold" style="font-family: 'Segoe UI'; text-align: center;">We couldn't find the page...</h2>-->

            <div class="error-desc">
                <div>
                    <a class="login-detail-panel-button btn" style="font-family: 'Segoe UI'; text-align: center;" href="index">
                        <i class="fa fa-arrow-left" style="font-family: 'Segoe UI'; text-align: center;"></i>
                        Click here to go back to Homepage                        
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>


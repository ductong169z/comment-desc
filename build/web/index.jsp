<%-- 
    Document   : index
    Created on : Oct 11, 2020, 11:51:07 AM
    Author     : HAPPY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css"/>
        <style>
            .comments-details button.btn.dropdown-toggle,
            .comments-details .total-comments {
                font-size: 18px;
                font-weight: 500;
                color: #5e5e5e;
            }
            .comments-details {
                padding: 15px 15px;
            }
            .comments .comments .dropdown,
            .comments .dropup {
                position: relative;
            }
            .comments button {
                background-color: transparent;
                border: none;
            }
            .comments .comment-box {
                width: 100%;
                float: left;
                height: 100%;
                background-color: #FAFAFA;
                padding: 10px 10px 10px;
                margin-bottom: 15px;
                border-radius: 5px;
                border: 1px solid #ddd;
            }
            .comments .add-comment {
                background-color: transparent;
                border: none;
                position: relative;
                margin-bottom: 50px;
            }
            .comments .commenter-pic {
                width: 50px;
                height: 50px;
                display: inline-block;
                border-radius: 100%;
                border: 2px solid #fff;
                overflow: hidden;
                background-color: #fff;
            }
            .comments .add-comment .commenter-name {
                width: 100%;
                padding-left: 75px;
                position: absolute;
                top: 20px;
                left: 0px;
            }
            .comments .add-comment input {
                border-top: 0px;
                border-bottom: 1px solid #ccc;
                border-left: 0px;
                border-right: 0px;
                outline: 0px;
                box-shadow: none;
                border-radius: 0;
                width: 100%;
                padding: 0;
                font-weight: normal;
            }
            .comments .add-comment input:focus {
                border-color: #03a9f4;
                border-width: 2px;
            }
            .comments .add-comment button[type=submit] {
                background-color: #03a9f4;
                color: #fff;
                margin-right: 0px;
            }
            .comments .add-comment button {
                background-color: #03a9f4;
                margin: 10px 5px;
                font-size: 14px;
                text-transform: uppercase;
                float: right;
            }
            .comments .commenter-name .comment-time {
                font-weight: normal;
                margin-left: 8px;
                font-size: 15px;
            }
            .comments p.comment-txt {
                font-size: 15px;
                border-bottom: 1px solid #ddd;
                padding: 0px 0px 15px;
            }
            .comments .commenter-name {
                display: inline-block;
                position: relative;
                top: -20px;
                left: 10px;
                font-size: 16px;
                font-weight: bold;
            }


            /*======Responsive CSS=======*/
            @media (max-width: 767px){
                .comments .commenter-name {
                    font-size: 13px;
                    top: -5px;
                }
                .comments .commenter-pic {
                    width: 40px;
                    height: 40px;
                }
                .comments .commenter-name a{
                    display: block;
                }
                .comments .commenter-name .comment-time{
                    display: block;
                    margin-left: 0px;
                }
            }
        </style> 
    </head>
    <body>
        <div class="container" style="background: #FFFFFF!important">

            <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarsExample03">
                </div>
                <img src="images/user-icon.png" width="40px" height="60px" class="img-fluid">

                <ul class="nav navbar-nav">
                    <li class="dropdown">

                        <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">

                            Welcome,Uzaki-chan <b class="caret"></b>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="$">Log Out</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-12">
                    <center>                    <iframe width="683" height="384" src="https://www.youtube.com/embed/Hgbuzoda-ow" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </center>
                </div>
                <div class="col-12">
                    <div class="comments">
                        <div class="comments-details">
                            <span class="total-comments comments-sort">xx Comments</span>
                            <span class="dropdown">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">Sort By <span class="caret"></span></button>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item">Newest First</a>
                                </div>
                            </span>     
                        </div>
                        <div class="comment-box add-comment">
                            <span class="commenter-pic">
                                <img src="images/user-icon.png" width="40px" height="60px" class="img-fluid">
                            </span>
                            <span class="commenter-name">
                                <input type="text" class="form-control" placeholder="Add a public comment" id="new-comment" name="new-comment">
                                <button id="btn-comment" class="btn btn-default"  data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Comment</button>
                            </span>

                        </div>
                        <div class="comment-box">
                            <span class="commenter-pic">
                                <img src="images/user-icon.png" class="img-fluid">
                            </span>
                            <span class="commenter-name">
                                <a href="#">Email</a> <span class="comment-time">Date time</span>
                            </span>       
                            <p class="comment-txt more">Message</p>

                        </div>
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!--     add action here-->
                                        <form action="#" method="POST" id="message-form">
                                            <div class="form-group">
                                                <label for="email" class="col-form-label">Email:</label>
                                                <input type="text" class="form-control" id="email" name="email">
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Message:</label>
                                                <textarea class="form-control" id="message-text" name="message-text"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" style="background: #ccc;color: #000" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" style="background: #03a9f4;color: #000" id="btn-submit">Send message</button>
                                    </div>
                                </div>
                            </div>
                        </div
                    </div>
                </div>
                <script src="lib/jquery/jquery-3.5.1.js">
                </script>
                <script src="lib/popper/popper.min.js">
                </script>
                <script src="lib/bootstrap/js/bootstrap.js">
                </script>
                <script>
                    $('#btn-comment').click(function () {
                        $("#message-text").val($("#new-comment").val());
                    });
                    $('#exampleModal').on('show.bs.modal', function (event) {
                        var button = $(event.relatedTarget) // Button that triggered the modal
                        var recipient = button.data('whatever') // Extract info from data-* attributes
                        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                        var modal = $(this)
                    });
                    function ValidateEmail(mail)
                    {
                        if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(mail))
                        {
                            return (true)
                        }
                        alert("You have entered an invalid email address!")
                        return (false)
                    }
                    function ValidateMessage(message)
                    {
                        if (message.length > 0)
                        {
                            return (true)
                        }
                        alert("You must entry message!")
                        return (false)
                    }


                    $('#btn-submit').click(function () {
                        if (ValidateEmail($("#email").val()) && ValidateMessage($("#message-text").val())) {
                            $("#message-form").submit();
                        }
                    });
                </script>
                </body>
                </html>

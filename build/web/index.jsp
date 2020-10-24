<%-- 
    Document   : index
    Created on : Oct 11, 2020, 11:51:07 AM
    Author     : HAPPY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "/struts-tags" prefix = "s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment Page</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css"/>
        <!-- CSS for the project -->
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
        <div class="container pl-0 pr-0" style="background: #FFFFFF!important">
            <%-- Navigation bar area --%>
            <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
                <a class="navbar-brand" href="#"></a>
                <div class="collapse navbar-collapse" id="navbarsExample03">
                    <span class="text-light h4 mb-0">Comment Page</span>
                </div>
                <img src="images/user-icon.png" width="40px" height="60px" class="img-fluid">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#" class="nav-link text-light" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                            Welcome, Uzaki-chan!
                        </a>
                    </li>
                </ul>
            </nav>
            <%-- Page Content Area --%>
            <div class="row pl-5 pr-5" style="padding-top: 15px">
                <%-- Video Section --%>
                <div class="col-12-md embed-responsive embed-responsive-16by9">
                    <center>
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Hgbuzoda-ow" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </center>
                </div>
                <%-- Comment Section --%>
                <div class="col-12">
                    <div class="comments">
                        <%-- Comment Details and Sort Button --%>
                        <div class="comments-details">
                            <%-- Shows total comments available --%>
                            <span class="total-comments comments-sort"><s:property value ="commentList.size()"/> Comments</span>
                            <%-- Option to sort the comments, default and only option is newest first --%>
                            <span class="dropdown">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" style="margin-left: 2%!important; padding-bottom:12px!important;">Sort By <span class=""></span></button>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item">Newest First</a>
                                </div>
                            </span>     
                        </div>

                        <%-- Comment Box Section --%>
                        <div class="comment-box add-comment">
                            <span class="commenter-pic">
                                <img src="images/user-icon.png" width="40px" height="60px" class="img-fluid">
                            </span>
                            <span class="commenter-name">
                                <input type="text" class="form-control" placeholder="Add a public comment" id="new-comment" name="new-comment">
                                <button id="btn-comment" class="btn btn-default text-light"  data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap" style="background-color: #343a40!important;">Comment</button>
                            </span>
                        </div>

                        <%-- Iterator to load all comments in list to web page --%>
                        <s:iterator value="commentList">
                            <div class="comment-box">
                                <span class="commenter-pic">
                                    <img src="images/user-icon.png" class="img-fluid">
                                </span>
                                <span class="commenter-name">
                                    <s:property value="email" /><a href="#"></a> <span class="comment-time"><s:property value="created_at" /></span>
                                </span>       
                                <p class="comment-txt more" style="overflow-wrap: anywhere!important;"><s:property value="content" /></p>
                            </div>
                        </s:iterator>

                        <%-- Creating comment form section --%>
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <%-- Title of form --%>
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">New comment</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <%-- Email and comment sections --%>
                                    <div class="modal-body">
                                        <!--     add action here-->
                                        <form action="createNewComment" method="POST" id="message-form">
                                            <div class="form-group">
                                                <label for="email" class="col-form-label">Email:</label>
                                                <input type="text" class="form-control" id="message-email" name="email">
                                            </div>
                                            <div class="form-group">
                                                <label for="comment" class="col-form-label">Comment:</label>
                                                <textarea class="form-control" id="message-text" name="comment"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" style="background: #ccc;color: #000" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" style="background: #03a9f4;color: #000" id="btn-submit">Comment</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-- Scripts for Bootstraps and jQuery --%>
        <script src="lib/jquery/jquery-3.5.1.js"></script>
        <script src="lib/popper/popper.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.js"></script>
        <%-- Scripts for everything --%>
        <script>
            $('#btn-comment').click(function () {
                $("#message-text").val($("#new-comment").val());
            });

            <%-- Focus on email field when open the comment form modal --%>
            $('#exampleModal').on('shown.bs.modal', function () {
                $('#message-email').focus();
            });

//
//            $(document).keypress(function (e) {
//                if ($("body").hasClass('modal-open') && (e.keycode == 13 || e.which == 13)) {
//
//                } else {
//
//                }
//            });

//            <%-- Trigger comment form to open when pressing enter (outside of form) --%>
//            // Get the input field
//            var input = document.getElementById("new-comment");
//
//            // Execute a function when the user releases a key on the keyboard
//            input.addEventListener("keydown", function (event) {
//                // Number 13 is the "Enter" key on the keyboard
//                if (event.keyCode === 13) {
//                    // Trigger the button element with a click
//                    document.getElementById("btn-comment").click();
//                }
//            });

            <%-- Trigger comment button (inside form) --%>
            // Get the input field
            var input2 = document.getElementById("message-email");

            // Execute a function when the user releases a key on the keyboard
            input2.addEventListener("keydown", function (event) {
                // Number 13 is the "Enter" key on the keyboard
                if (event.keyCode === 13) {
                    // Cancel the default action, if needed
                    event.preventDefault();
                    // Trigger the button element with a click
                    document.getElementById("btn-submit").click();
                }
            });

            // Get the input field
            var input3 = document.getElementById("message-text");

            // Execute a function when the user releases a key on the keyboard
            input3.addEventListener("keydown", function (event) {
                // Number 13 is the "Enter" key on the keyboard
                if (event.keyCode === 13) {
                    event.preventDefault();
                    // Trigger the button element with a click
                    document.getElementById("btn-submit").click();
                }
            });

            <%-- Validate message and email, and validation trigger when "Comment" button in form is clicked --%>
            function ValidateEmail(mail)
            {
                if (/^([a-zA-Z0-9]+)([\_\.\-{1}])?([a-zA-Z0-9]+)\@([a-zA-Z0-9]+)([\.])([a-zA-Z\.]+)$/.test(mail))
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
                alert("You must enter a message!")
                return (false)
            }

            $('#btn-submit').click(function () {
                if (ValidateEmail($("#message-email").val()) && ValidateMessage($("#message-text").val())) {
                    $("#message-form").submit();
                }
            });
        </script>
    </body>
</html>

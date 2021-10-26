<%-- 
    Document   : BookTour
    Created on : Oct 16, 2021, 12:48:26 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="../link/LinkHead.jsp"></jsp:include>

        </head>
        <body>
        <jsp:include page="../home/Header.jsp"></jsp:include>

            <div id="booking" class="section">
                <div class="section-center">
                    <div class="container">
                        <div class="row">
                            <div class="booking-form">
                                <div class="form-header">
                                    <h1>Make your reservation</h1>
                                </div>
                                <form action="booktour" method="POST">
                                    <div class="form-group"> <input class="form-control" required name="name" type="text" placeholder="Your name.."> <span class="form-label">Destination</span> </div>                                                           
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group"> <input required class="form-control" name="address" type="text" placeholder="Enter your address"> <span class="form-label">Email</span> </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group"> <input required class="form-control" name="phone" type="text" placeholder="Enter you Phone"> <span class="form-label">Phone</span> </div>
                                        </div>
                                    </div>
                                    <div class="form-group"> <input required="" class="form-control" name="email" type="text" placeholder="Your email.."> <span class="form-label">Destination</span> </div>
                                    <div class="form-group"> <input required="" class="form-control" name="note" type="text" placeholder="Note.."> <span class="form-label">Destination</span> </div>
                                    <div class="form-btn"> <button class="submit-btn">Book Now</button> </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <style>
                body {
                    background: #D6D6D6;
                }

                .section {
                    position: relative;
                    height: 100vh
                }

                .section .section-center {
                    position: absolute;
                    top: 50%;
                    left: 0;
                    right: 0;
                    -webkit-transform: translateY(-50%);
                    transform: translateY(-50%)
                }

                #booking {
                    font-family: 'Raleway', sans-serif
                }

                .booking-form {
                    position: relative;
                    max-width: 642px;
                    width: 100%;
                    margin: auto;
                    padding: 40px;
                    overflow: hidden;
                    background-image: url('https://i.imgur.com/8z1tx3u.jpg');
                    background-size: cover;
                    border-radius: 5px;
                    z-index: 20
                }

                .booking-form::before {
                    content: '';
                    position: absolute;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    top: 0;
                    background: rgba(0, 0, 0, 0.7);
                    z-index: -1
                }

                .booking-form .form-header {
                    text-align: center;
                    position: relative;
                    margin-bottom: 30px
                }

                .booking-form .form-header h1 {
                    font-weight: 700;
                    text-transform: capitalize;
                    font-size: 42px;
                    margin: 0px;
                    color: #fff
                }

                .booking-form .form-group {
                    position: relative;
                    margin-bottom: 30px
                }

                .booking-form .form-control {
                    background-color: rgba(255, 255, 255, 0.2);
                    height: 60px;
                    padding: 0px 25px;
                    border: none;
                    border-radius: 40px;
                    color: #fff;
                    -webkit-box-shadow: 0px 0px 0px 2px transparent;
                    box-shadow: 0px 0px 0px 2px transparent;
                    -webkit-transition: 0.2s;
                    transition: 0.2s
                }

                .booking-form .form-control::-webkit-input-placeholder {
                    color: rgba(255, 255, 255, 0.5)
                }

                .booking-form .form-control:-ms-input-placeholder {
                    color: rgba(255, 255, 255, 0.5)
                }

                .booking-form .form-control::placeholder {
                    color: rgba(255, 255, 255, 0.5)
                }

                .booking-form .form-control:focus {
                    -webkit-box-shadow: 0px 0px 0px 2px #ff8846;
                    box-shadow: 0px 0px 0px 2px #ff8846
                }

                .booking-form input[type="date"].form-control {
                    padding-top: 16px
                }

                .booking-form input[type="date"].form-control:invalid {
                    color: rgba(255, 255, 255, 0.5)
                }

                .booking-form input[type="date"].form-control+.form-label {
                    opacity: 1;
                    top: 10px
                }

                .booking-form select.form-control {
                    -webkit-appearance: none;
                    -moz-appearance: none;
                    appearance: none
                }

                .booking-form select.form-control:invalid {
                    color: rgba(255, 255, 255, 0.5)
                }

                .booking-form select.form-control+.select-arrow {
                    position: absolute;
                    right: 15px;
                    top: 50%;
                    -webkit-transform: translateY(-50%);
                    transform: translateY(-50%);
                    width: 32px;
                    line-height: 32px;
                    height: 32px;
                    text-align: center;
                    pointer-events: none;
                    color: rgba(255, 255, 255, 0.5);
                    font-size: 14px
                }

                .booking-form select.form-control+.select-arrow:after {
                    content: '\279C';
                    display: block;
                    -webkit-transform: rotate(90deg);
                    transform: rotate(90deg)
                }

                .booking-form select.form-control option {
                    color: #000
                }

                .booking-form .form-label {
                    position: absolute;
                    top: -10px;
                    left: 25px;
                    opacity: 0;
                    color: #ff8846;
                    font-size: 11px;
                    font-weight: 700;
                    text-transform: uppercase;
                    letter-spacing: 1.3px;
                    height: 15px;
                    line-height: 15px;
                    -webkit-transition: 0.2s all;
                    transition: 0.2s all
                }

                .booking-form .form-group.input-not-empty .form-control {
                    padding-top: 16px
                }

                .booking-form .form-group.input-not-empty .form-label {
                    opacity: 1;
                    top: 10px
                }

                .booking-form .submit-btn {
                    color: #fff;
                    background-color: #e35e0a;
                    font-weight: 700;
                    height: 60px;
                    padding: 10px 30px;
                    width: 100%;
                    border-radius: 40px;
                    border: none;
                    text-transform: uppercase;
                    font-size: 16px;
                    letter-spacing: 1.3px;
                    -webkit-transition: 0.2s all;
                    transition: 0.2s all
                }

                .booking-form .submit-btn:hover,
                .booking-form .submit-btn:focus {
                    opacity: 0.9
                }
            </style>
        <jsp:include page="../home/Footer.jsp"></jsp:include>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Quick Coffee - Menu</title>

        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://techsolutionshere.com/wp-content/themes/techsolution/assets/blog-post-css-js/meanmenu.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/png">
    </head>

    <body>

        <!-- Start Navbar Area -->
        <div class="navbar-area">

            <!-- Menu For Mobile Device -->
            <div class="mobile-nav">
                <a href="${pageContext.request.contextPath}/user" class="logo">
                    <img src="${pageContext.request.contextPath}/img/logo.png" alt="logo.png">
                </a>
            </div>

            <!-- Menu For Desktop Device -->
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/user">
                    <img src="${pageContext.request.contextPath}/img/logo.png" alt="logo.png">
                </a>
                <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/user" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/user/menu" class="nav-link">Catalog</a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/user/about" class="nav-link ">About us</a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/user/contact" class="nav-link">Contact</a>
                        </li>
                        <li class="nav-item dropdown" id="drop">
                            <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <sec:authentication property="principal.username" />
                            </a>
                            <div id="select" class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/user/settings">Settings</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/user/history">Order History</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Logout</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/user/cart" class="nav-link"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                </svg> Cart</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- End Navbar Area -->

        <div class="background">
            <main class="mt-5 pt-4">
                <div class="container">

                    <!--Grid row-->
                    <div class="row justify-content-center">
                        <!--Grid column-->
                        <div class="col-md-9 mb-3">

                            <!--Card-->
                            <div class="card">
                                <h2 class="my-4 h2 text-center headertext">Complete your order</h2>
                                <p style="color:red; padding-left: 22px;">${message}</p>
                                <form:form action="${pageContext.request.contextPath}/user/checkout/process" method="POST" modelAttribute="order" cssClass="card-body">
                                    <div class="order_details">
                                        <h4 class="my-2">Your order info</h4>
                                        <!--Grid row-->
                                        <div class="row">
                                            <div class="col-md">
                                                <select class="custom-select d-block w-100" id="address" name="addressid">
                                                    <c:forEach items="${address}" var = "address">
                                                        <option  value="${address.id}">${address.street} ${address.number} ${address.city}, ${address.zipcode}, Doorbell Name : ${address.doorbell}, Floor : ${address.floor}</option>
                                                    </c:forEach>
                                                </select>
                                                <label for="address">Address</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="md-form my-3">
                                                    <input type="text" id="tel" class="form-control" value="${account.tel}" readonly>
                                                    <label for="tel" class="text-info">Telephone</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="my-4" id="add_address">
                                            <h6>
                                                <a class="myBtn">Order to a new address</a>
                                            </h6>
                                        </div>
                                    </div>
                                    <hr class="mb-4">
                                    <div class="row my-3">
                                        <div class="col-md-6">
                                            <h4>Payment method</h4>
                                            <div class="d-block my-3">
                                                <c:forEach items="${payment}" var = "payment">
                                                    <div class="custom-control custom-radio">
                                                        <input id="${payment.type}" value="${payment.id}" name="payment" type="radio" class="custom-control-input" checked>
                                                        <label class="custom-control-label" for="${payment.type}">${payment.type}</label>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <h4>Total amount</h4>
                                            <p id="amount">&euro; ${finalprice}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="comments" class="text-info">Comments</label>
                                            <textarea name="comments" id="comments" maxlength="150"></textarea>
                                        </div>
                                        <div class="col-md-6 my-5 text-center">
                                            <div class="checkoutcenter">
                                                <button type="submit" class="button checkoutbtn"><span>Continue to checkout</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                                <form:form action="${pageContext.request.contextPath}/user/checkout/address" method="POST" modelAttribute="details" cssClass="card-body">
                                    <!-- Modal content -->
                                    <div id="myModal" class="modal modules">
                                        <div class="modal-content">
                                            <span class="close">&times;</span>
                                            <div class="details">
                                                <h4 class="mb-4">Please complete your details: </h4>
                                                <!--Grid row-->
                                                <div class="row">
                                                    <!--Grid column-->
                                                    <div class="col-md-6 mb-4">
                                                        <div class="md-form">
                                                            <input type="text" id="street" name="street" class="form-control" required="required" minlength="3" maxlength="45" title="Address must be between 3 to 45 letters" />
                                                            <label for="street" class="text-info">Street</label>
                                                        </div>
                                                    </div>
                                                    <!--Grid column-->
                                                    <div class="col-md-6 mb-4">
                                                        <div class="md-form">
                                                            <input type="text" id="number" name="number" class="form-control" required="required" minlength="1" maxlength="4" pattern="\d*" title="Place Street Number" />
                                                            <label for="number" class="text-info">Number</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Grid row-->
                                                <div class="row">
                                                    <!--Grid column-->
                                                    <div class="col-md-6 mb-4">
                                                        <div class="md-form">
                                                            <input type="text" id="city" name="city" class="form-control" required="required" minlength="3" maxlength="45" title="City must be between 3 to 45 letters" />
                                                            <label for="city" class="text-info">City</label>
                                                        </div>
                                                    </div>
                                                    <!--Grid column-->
                                                    <div class="col-md-6 mb-4">
                                                        <div class="md-form">
                                                            <input type="text" id="zip" name="zipcode" class="form-control" required="required" minlength="5" maxlength="5" pattern="\d*" title="Place Zip Code" />
                                                            <label for="zip" class="text-info">Zip code</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Grid row-->
                                                <div class="row">
                                                    <!--Grid column-->
                                                    <div class="col-md-6 mb-4">
                                                        <div class="md-form">
                                                            <input type="text" id="floor" name="floor" class="form-control" maxlength="15" title="Place Floor" />
                                                            <label for="floor" class="text-info">Floor</label>
                                                        </div>
                                                    </div>
                                                    <!--Grid column-->
                                                    <div class="col-md-6 mb-4">
                                                        <div class="md-form">
                                                            <input type="text" id="doorbell" name="doorbell" class="form-control" maxlength="30" title="Place Doorbell" />
                                                            <label for="doorbell" class="text-info">Name on doorbell</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Grid column-->
                                                <div class="col-md-6 my-4 text-center">
                                                    <div class="btnplace"><button class="button btnpopup">
                                                            <span>Submit</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
        </div>
    </main>
</div>

<footer class="nb-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-info-single">
                    <h2 class="title">information</h2>
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/user/about" title="About Us"><i
                                    class="fa fa-angle-double-right"></i> About Us</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/chat" title="Live Chat"><i
                                    class="fa fa-angle-double-right"></i> Live Chat</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/contact" title="Contact"><i
                                    class="fa fa-angle-double-right"></i> Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-info-single">
                    <h2 class="title">Payment</h2>
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/user/payment" title="Payment"><i
                                    class="fa fa-angle-double-right"></i> Supported Methods</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-info-single location">
                    <h2 class="title">Address</h2>
                    <h6 class="copyrighttext"> Nikolaou Plastira 8<br> Aigaleo 12242</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-info-single location">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d393.03731652767897!2d23.68237087174767!3d37.993496642855426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1bcb079ef11e3%3A0x5d5a1b265910580!2zzp3Ouc66LiDOoM67zrHPg8-Ezq7Pgc6xIDgsIM6RzrnOs86szrvOtc-JIDEyMiA0Mg!5e0!3m2!1sel!2sgr!4v1615127573355!5m2!1sel!2sgr"
                        width="250" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container" style="width: 100%;">
            <div class="row">
                <div class="col-md-12">
                    <p>???? 2021 by Company</p>
                </div>
            </div>
        </div>
</footer>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
src="https://techsolutionshere.com/wp-content/themes/techsolution/assets/blog-post-css-js/jquery.meanmenu.js"></script>
<script>
    // Mean Menu
    jQuery('.mean-menu').meanmenu({
        meanScreenWidth: "991"
    });
</script></body>

</html>
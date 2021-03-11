<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Quick Coffee - Cart</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet"href="https://techsolutionshere.com/wp-content/themes/techsolution/assets/blog-post-css-js/meanmenu.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
        <link rel="icon" href="img/logo.png" type="image/png">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" href="img/logo.png" type="image/png">
    </head>

    <body>


        <!-- Start Navbar Area -->
        <div class="navbar-area">
            <!-- Menu For Mobile Device -->
            <div class="mobile-nav">
                <a href="${pageContext.request.contextPath}" class="logo">
                    <img src="img/logo.png" alt="logo.png">
                </a>

            </div>

            <!-- Menu For Desktop Device -->
            <div class="main-nav navbr">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light ">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}">
                            <img src="img/logo.png" alt="logo.png">
                        </a>
                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}" class="nav-link">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/menu" class="nav-link">Catalog</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/about" class="nav-link">About us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/contact" class="nav-link">Contact</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/register" class="nav-link">Sign Up</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/cart" class="nav-link active"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                                                                   height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                        </svg> Cart</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Navbar Area -->

        <div class="background">

            <div class="container">
                <div class="row">
                    <aside class="col-lg-9">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table table-borderless table-shopping-cart">
                                    <thead class="text-muted">
                                        <tr class="small text-uppercase">
                                            <th scope="col">Product</th>
                                            <th scope="col" width="120">Quantity</th>
                                            <th scope="col" width="120">Price</th>
                                            <th scope="col" class="text-right d-none d-md-block" width="200"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <figure class="itemside align-items-center">
                                                    <div class="aside"><img
                                                            src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342017/rTVSl.jpg"
                                                            class="img-sm"></div>
                                                    <figcaption class="info"> <a href="#" class="title text-dark"
                                                                                 data-abc="true">Tshirt with round nect</a>
                                                        <p class="text-muted small">SIZE: L <br> Brand: MAXTRA</p>
                                                    </figcaption>
                                                </figure>
                                            </td>
                                            <td> <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                </select> </td>
                                            <td>
                                                <div class="price-wrap"> <var class="price">$10.00</var> <small
                                                        class="text-muted"> $9.20 each </small> </div>
                                            </td>
                                            <td class="text-right d-none d-md-block"> <a
                                                    data-original-title="Save to Wishlist" title="" href=""
                                                    class="btn btn-light" data-toggle="tooltip" data-abc="true"> <i
                                                        class="fa fa-heart"></i></a> <a href="" class="btn btn-light"
                                                                                data-abc="true"> Remove</a> </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure class="itemside align-items-center">
                                                    <div class="aside"><img
                                                            src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342054/imgrc0078783629.jpg"
                                                            class="img-sm"></div>
                                                    <figcaption class="info"> <a href="#" class="title text-dark"
                                                                                 data-abc="true">Flower Formal T-shirt</a>
                                                        <p class="text-muted small">SIZE: L <br> Brand: ADDA </p>
                                                    </figcaption>
                                                </figure>
                                            </td>
                                            <td> <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                </select> </td>
                                            <td>
                                                <div class="price-wrap"> <var class="price">$15</var> <small
                                                        class="text-muted"> $12 each </small> </div>
                                            </td>
                                            <td class="text-right d-none d-md-block"> <a
                                                    data-original-title="Save to Wishlist" title="" href=""
                                                    class="btn btn-light" data-toggle="tooltip" data-abc="true"> <i
                                                        class="fa fa-heart"></i></a> <a href=""
                                                                                class="btn btn-light btn-round" data-abc="true"> Remove</a> </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure class="itemside align-items-center">
                                                    <div class="aside"><img
                                                            src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342208/ra_unisex_tshirt_x2200_fafafa_ca443f4786_front-c_267_146_1000_1000-bg_f8f8f8.u1.jpg"
                                                            class="img-sm"></div>
                                                    <figcaption class="info"> <a href="#" class="title text-dark"
                                                                                 data-abc="true">Printed White Tshirt</a>
                                                        <p class="small text-muted">SIZE:M <br> Brand: Cantabil</p>
                                                    </figcaption>
                                                </figure>
                                            </td>
                                            <td> <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                </select> </td>
                                            <td>
                                                <div class="price-wrap"> <var class="price">$9</var> <small
                                                        class="text-muted"> $6 each</small> </div>
                                            </td>
                                            <td class="text-right d-none d-md-block"> <a
                                                    data-original-title="Save to Wishlist" title="" href=""
                                                    class="btn btn-light" data-toggle="tooltip" data-abc="true"> <i
                                                        class="fa fa-heart"></i></a> <a href=""
                                                                                class="btn btn-light btn-round" data-abc="true"> Remove</a> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </aside>
                    <aside class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <dl class="dlist-align">
                                    <dt>Total price:</dt>
                                    <dd class="text-right ml-3">$69.97</dd>
                                </dl>
                                <hr> <a href="${pageContext.request.contextPath}/checkout"><button class="button cartbtn"><span>Submit Order </span></button></a>
                                <a href="${pageContext.request.contextPath}/menu"><button class="button cartbtn"><span>Continue Shopping </span></button></a>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>

        <footer class="nb-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-info-single">
                            <h2 class="title">information</h2>
                            <ul class="list-unstyled">
                                <li><a href="${pageContext.request.contextPath}/about" title=""><i
                                            class="fa fa-angle-double-right"></i> About Us</a></li>
                                <li><a href="${pageContext.request.contextPath}" title=""><i
                                            class="fa fa-angle-double-right"></i> Live Chat</a></li>
                                <li><a href="${pageContext.request.contextPath}/contact" title=""><i
                                            class="fa fa-angle-double-right"></i> Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-info-single">
                            <h2 class="title">Payment</h2>
                            <ul class="list-unstyled">
                                <li><a href="${pageContext.request.contextPath}/payment" title=""><i
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
                            <p>© 2021 by Company</p>
                        </div>
                    </div>
                </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script
        src="https://techsolutionshere.com/wp-content/themes/techsolution/assets/blog-post-css-js/jquery.meanmenu.js"></script>
        <script>
            // Mean Menu
            jQuery('.mean-menu').meanmenu({
                meanScreenWidth: "991"
            });
        </script>
    </body>

</html>
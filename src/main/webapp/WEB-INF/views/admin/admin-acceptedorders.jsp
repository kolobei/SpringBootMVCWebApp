<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/adminpanel.css" rel="stylesheet" type="text/css">
        <title>Orders</title>
        <link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/png">
    </head>
    <body>
        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed">
                        <span class="sr-only">Toggle navigation</span></button>
                    <a class="navbar-brand" href="#"><span>Coffee</span>Admin</a>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <div class="profile-sidebar">
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name"><sec:authentication property="principal.username" /></div>
                </div>
                <div class="clear"></div>
            </div>
            <ul class="nav menu">
                <li><a href="${pageContext.request.contextPath}/admin"><em class="fa fa-dashboard">&nbsp;</em> Main</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/admins"><em class="fa fa-user-circle">&nbsp;</em> Admins</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/users"><em class="fa fa-user-circle">&nbsp;</em> Users</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/orders"><em class="fa fa-cart-arrow-down">&nbsp;</em> New Orders</a></li>
                <li  class="active"><a href="${pageContext.request.contextPath}/admin/acceptedorder"><em class="fa fa-cart-arrow-down">&nbsp;</em> Accepted Orders</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/declinedorder"><em class="fa fa-cart-arrow-down">&nbsp;</em> Declined Orders</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/coffees"><em class="fa fa-coffee">&nbsp;</em> Coffees</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/drinks"><em class="fa fa-glass">&nbsp;</em>Drinks</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/snacks"><em class="fa fa-heart-o">&nbsp;</em>Snacks</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/categories"><em class="fa fa-arrows-alt">&nbsp;</em>Categories</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/disabled"><em class="fa fa-ban">&nbsp;</em>Disabled Products</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/disabled/categories"><em class="fa fa-ban">&nbsp;</em>Disabled Categories</a></li>
                <li><a href="${pageContext.request.contextPath}/logout"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
            </ul>
        </div><!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/user">
                            <em class="fa fa-home"></em>
                        </a></li>
                    <li class="active">Accepted Orders</li>
                </ol>
            </div><!--/.row-->
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Date Time</th>
                            <th scope="col">Price</th>
                            <th scope="col">Payment</th>
                            <th scope="col">Comments</th>
                            <th scope="col">Address</th>
                            <th scope="col">Customer</th>
                            <th scope="col">Products</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${acceptedOrder}" var = "order">
                            <tr>
                                <th scope="row">${order.id}</th>
                                <td>${order.dateCreated}</td>
                                <td><em class="fa fa-eur"></em>${order.price}</td>
                                <td>${order.payment.type}</td>
                                <td>${order.comments}</td>
                                <td><a href="${pageContext.request.contextPath}/admin/address/${order.addressid.id}"><em class="fa fa-address-book-o"></em> Address</a></td>
                                <td><a href="${pageContext.request.contextPath}/admin/order/user/${order.accountid.id}"><em class="fa fa-user-circle-o"></em> Customer</a></td>
                                <td><a href="${pageContext.request.contextPath}/admin/orderdetails/${order.id}"><em class="fa fa-product-hunt"></em> Products</a></td>
                                <td><a href="${pageContext.request.contextPath}/admin/orders/decline?id=${order.id}">Decline</a></td>
                            </tr>
                        </c:forEach>
                        <c:forEach items="${userOrders}" var = "uOrder">
                            <tr>
                                <th scope="row">${uOrder.id}</th>
                                <td>${uOrder.dateCreated}</td>
                                <td><em class="fa fa-eur"></em>${uOrder.price}</td>
                                <td>${uOrder.payment.type}</td>
                                <td>${uOrder.comments}</td>
                                <td><a href="${pageContext.request.contextPath}/admin/address/${uOrder.addressid.id}"><em class="fa fa-address-book-o"></em> Address</a></td>
                                <td><a href="${pageContext.request.contextPath}/admin/order/user/${uOrder.accountid.id}"><em class="fa fa-user-circle-o"></em> Customer</a></td>
                                <td><a href="${pageContext.request.contextPath}/admin/orderdetails/${uOrder.id}"><em class="fa fa-product-hunt"></em> Products</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
</html>

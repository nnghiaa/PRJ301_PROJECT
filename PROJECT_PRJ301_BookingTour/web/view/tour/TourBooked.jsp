<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : TourBooked
    Created on : Oct 29, 2021, 12:40:51 AM
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
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-8"><h2>Tour Booked</h2></div>

                        </div>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Tour Code</th>
                                <th>Tour name</th>
                                <th>Tour Info</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>

                        <c:forEach  var="t" items="${toursBookedByCustomer}">
                            <tr>
                                <td>${t.tour.tourCode}</td>
                                <td>${t.tour.tourName}</td>
                                <td>
                                    Price: ${t.tour.tourPrice}$
                                    <br>
                                    Check in: ${t.tour.startDate} <br> Check out: ${t.tour.endDate}
                                     <br>
                                     Vehicle: ${t.tour.vehicle}
                                     <br>
                                     Numberguest: ${t.tour.numberGuests}
                                     <br>
                                     Price: ${t.tour.tourPrice}
                                </td>
                                <td>
                                    <button  type="button" class="btn btn-primary">${t.bs.status_name}</button>
                                </td>
                            </tr>
                        </c:forEach>    
                    </tbody>
                </table>
            </div>
        </div>  
        <style>
            body {
                color: #404E67;
                background: #F5F7FA;
                font-family: 'Open Sans', sans-serif;
            }
            .table-wrapper {
                width: 700px;
                margin: 30px auto;
                background: #fff;
                padding: 20px;	
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 10px;
                margin: 0 0 10px;
            }
            .table-title h2 {
                margin: 6px 0 0;
                font-size: 22px;
            }
            .table-title .add-new {
                float: right;
                height: 30px;
                font-weight: bold;
                font-size: 12px;
                text-shadow: none;
                min-width: 100px;
                border-radius: 50px;
                line-height: 13px;
            }
            .table-title .add-new i {
                margin-right: 4px;
            }
            table.table {
                table-layout: fixed;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table th:last-child {
                width: 100px;
            }
            table.table td a {
                cursor: pointer;
                display: inline-block;
                margin: 0 5px;
                min-width: 24px;
            }    
            table.table td a.add {
                color: #27C46B;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #E34724;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table td a.add i {
                font-size: 24px;
                margin-right: -1px;
                position: relative;
                top: 3px;
            }    
            table.table .form-control {
                height: 32px;
                line-height: 32px;
                box-shadow: none;
                border-radius: 2px;
            }
            table.table .form-control.error {
                border-color: #f50000;
            }
            table.table td .add {
                display: none;
            }

        </style>


        <jsp:include page="../home/Footer.jsp"></jsp:include>
    </body>
</html>

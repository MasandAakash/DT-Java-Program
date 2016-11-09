<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<style>
#customerContainer
{
margin-top: 60px;
height: 400px;
    width: 60%;
    text-align: center;
    
    
}

</style>

</head>
<body>
<div class="container-wrapper">
    <div class="container" id="customerContainer">
        <div class="page-header">
            <h1>Customer Management Page</h1>

            
        </div>

        <table class="table table-bordered table-hover">
            <thead>
            <tr class="bg-danger">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>
        </div>
       </div>
       </body>
       </html>
       


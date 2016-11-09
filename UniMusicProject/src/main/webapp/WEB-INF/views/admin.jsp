<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<style>
#adminContainer
{
margin-top: 60px;
height: 400px;
    width: 60%;
    text-align: center;
    
    
}

</style>

</head>
<body>

    <div class="container" id="adminContainer">
        <div class="page-header">
            <h1>Administration Page</h1>

            
        </div>

        
		<h3>Choose the operation to be performed</h3>
        <h3>
            <a href="<c:url value="/admin/productInventory" /> " class="btn btn-primary ">Product Inventory</a>
        </h3>
        <h3>
            <a href="<c:url value="/admin/customer" /> " class="btn btn-info ">Customer Management</a>
        </h3>
</div>

</body>
</html>


<%@ include file="/WEB-INF/views/template/footer.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<style>
#productContainer
{
margin-top: 60px;
height: 400px;
    width: 60%;
    
}

</style>

</head>

<body>
	<script>
	
	    $(document).ready(function(){
	        var searchCondition = '${searchCondition}';
	
	        $('.table').DataTable({
	            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
	            "oSearch" : {"sSearch": searchCondition}
	        });
	    });
	</script>
<div class="container-wrapper">
    <div class="container" id="productContainer">
        <div class="page-header">
            <h1>All Products</h1>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr  class="bg-success">
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="Image" style="width: 150px;height: 150px;"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} INR </td>
              
               <td><a
							href="<spring:url value="/product/viewProduct/${product.productId}" />"
							class="btn btn-primary"> 
							<span class="glyphicon-info-sign glyphicon"> </span> Details
						</a> </td>
                </tr>
            </c:forEach>
        </table>
</div>
</div>
</body>
</html>


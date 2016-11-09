<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<div class="container-wrapper">
    <div class="container" id="productContainer">
        <div class="page-header">
            <h1>Add a new Product</h1>


            <p class="lead">Fill the below information to add a new instrument:</p>
        </div>

         <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" commandName="product" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Flute" />Flute</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Guitar" />Guitar</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Piano" />Piano</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Drums" />Drums</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Brass/Wind" />Brass/Wind</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Violin" />Violin</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="price" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
            </div>


            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

        <br/><br/>

        <input type="submit" value="Submit" class="btn btn-success">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-danger">Cancel</a>

    </form:form>
    </div>
    </div>
    </body>
    
    </html>
    


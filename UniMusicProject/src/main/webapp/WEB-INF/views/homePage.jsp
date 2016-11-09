<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
#carouselContainer
{
	margin-top: 60px;
	margin-bottom: 30px;
	
}

.placeholders {
  
  text-align: center;
}

.placeholder {
  margin-bottom: 20px;
}
.placeholders h4 {
  margin-bottom: 0;
  
}
.placeholder img {
  display: inline-block;
  border-radius: 50%;
}
.main .h2 {
  text-align : left;
  margin-top: 0;
  on-hover: cursor-hand;
  color: red;
  
}

.txt:hover {
    text-decoration: underline;
}

.main a
{
	
    text-decoration: none;
}

.footer
{
 background-color: black;
 font-size: 11px;
 padding: 20px;
 color: #eee;
 text-align: center;
 margin-bottom: 0;
 margin-top: 30px;
 
 
}

.companyList, .followUs
{
list-style: none;
padding : 0 ;
text-align : center;

}

.description
{
margin-top: 30px; 
}


</style>

</head>
<body>
<div class="container" id="mainContainer">
 
<div class="container" id="carouselContainer">
	 	
	 	<div class="carousel" id="mainCarousel" data-ride="carousel">
	 		
	 		<!-- Indicators for the carousel images  -->
	 		<ol class="carousel-indicators">
				<li class="active" data-target="#mainCarousel" data-slide-to="0"></li>
				<li data-target="#mainCarousel" data-slide-to="1"></li>
				<li data-target="#mainCarousel" data-slide-to="2"></li> 		
	 		</ol>
	 		<!-- Wrapper for Slides -->
	 		<div class="carousel-inner" role="listbox">
	 			<div class="item active" id="image1">
	 			<img src =<c:url value="/resources/images/piano1.jpg"/>  alt ="Ae Dil Hai Mushkil" class="img-responsive">
	 			</div>
	 			
	 			<div class="item" id="image2">
	 			<img src =<c:url value="/resources/images/guitar1.jpg"/> alt ="Shivaay" class="img-responsive" >
	 			</div>
	 			
	 			<div class="item" id="image3">
	 			<img src =<c:url value="/resources/images/violin1.jpg"/> alt ="Instruments" class="img-responsive">
	 			</div>
	 			<!-- Controls for the carousel  -->
	 		<a class="left carousel-control" data-slide="prev" href="#mainCarousel"><span class="icon-prev"></span></a>
	 		<a class="right carousel-control" data-slide="next" href="#mainCarousel"><span class="icon-next"></span></a>
	 		</div><!-- end carousel inner -->
	 	</div><!-- ending the mainCarousel -->
	 	</div><!-- Ending the container for the carousel  -->
	 		 
	<div class="container" id="instrumentsBanner">
	 	<div class="col-sm-12 col-md-12 col-lg-12 main">
          		<h2><span class="text-muted">All Products</span></h2>
          		<hr>
					<div class="row placeholders">
           				<div class="col-xs-6 col-sm-2 placeholder">
           				<a href="product/productList?searchCondition=Flutes" ><img src=<c:url value="/resources/images/Flutes.jpg" /> width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail"></img></a>
              			<h4> <span class="txt">Flutes</span></h4>
            			</div>
            			<div class="col-xs-6 col-sm-2 placeholder">
              			<a href="product/productList?searchCondition=Guitars" ><img src=<c:url value="/resources/images/Guitar.jpg"/> width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail"></img></a>
              			<h4><span class="txt">Guitars</span></h4>
            			</div>
            			<div class="col-xs-6 col-sm-2 placeholder">
              			<a href="product/productList?searchCondition=Piano" ><img src=<c:url value="/resources/images/piano.jpg"/> width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail"></img></a>
              			<h4><span class="txt">Piano</span></h4>
              			</div>
           				<div class="col-xs-6 col-sm-2 placeholder">
              			<a href="product/productList?searchCondition=Drums" ><img src=<c:url value="/resources/images/drums.jpg"/> width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail"></img></a>
              			<h4><span class="txt">Drums</span></h4>
            			</div>
           				<div class="col-xs-6 col-sm-2 placeholder">
              			<a href="product/productList?searchCondition=Brass/Wind" ><img src=<c:url value="/resources/images/Horns.jpg" /> width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail"></img></a>
              			<h4><span class="txt">Brass/Wind</span></h4>
           				</div>
           				<div class="col-xs-6 col-sm-2 placeholder">
              			<a href="product/productList?searchCondition=Violins" ><img src=<c:url value="/resources/images/Violin.jpg" /> width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail"></img></a>
              			<h4><span class="txt">Violins</span></h4>

            			</div>
            			
           			</div>
           	</div>
	 	 </div> <!-- ending the instrumentsBanner -->
	 	
	 
   
</div><!-- end mainContainer -->

<footer class="footer">
	<div class="container">
		
		<div class="row">
		<div class="container" id="rowContainer">
		
			<div class="col-sm-3 col-md-3"> 
			<h6>Copyright &copy; 2016 UniMusic Pvt Ltd.</h6>
			</div>
			<div class="col-sm-3 col-md-3"> 
			<h6>Company</h6>
				<ul class="companyList">
				<li><a href="#">Blogs</a></li>
				<li><a href="#">Jobs</a></li>
				<li><a href="#">Press</a></li>
				<li><a href="#">Advertise</a></li>
				<li><a href="#">Terms and Privacy</a></li>
				<li><a href="#">Help and support</a></li> 
				</ul>
			</div>
			<div class="col-sm-3 col-md-3"> 
			<h6>Follow Us</h6>
			<ul class="followUs">
				<li><a href="#">Facebook</a></li>
				<li><a href="#">Twitter</a></li>
				<li><a href="#">Pinterest</a></li>
			</div>
			<div class="col-sm-3 col-md-3"> 
			<h6>Back to top &nbsp;<span class=" glyphicon glyphicon-triangle-top"></span></h6>
			</div>
			
			</div>
			
		
		</div><!-- end row -->
		
	</div><!-- end container -->


</footer>



</body>

</html>
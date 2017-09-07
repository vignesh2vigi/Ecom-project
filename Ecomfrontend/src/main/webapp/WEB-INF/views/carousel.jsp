<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
	
	
</head>
<body style="background-color:#ffffff">
	<div class="container-fluid">

<div id="myCarousel" class="carousel slide" data-ride="carousel" >
            <!-- Indicators -->
            <ol class="carousel-indicators" >
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                <c:url value="/resource/images/climber.jpg" var="url1"></c:url>
                    <img class="first-slide home-image" src="${url1 }" style="width:1320px;height:320px" alt="first slide">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                	<c:url value="/resource/images/DusterMountain.jpg" var="url2"></c:url>
                    <img class="second-slide home-image " src="${url2 }" style="width:1320px;height:320px" alt="second slide">
                    <div class="container">
                       
                    </div>
                </div>
                 <div class="item">
                 <c:url value="/resource/images/loggy.jpg" var="url3"></c:url>
                    <img class="third-slide home-image " src="${url3 }" style="width:1320px;height:320px" alt="third slide">
                    <div class="container">
                        
                    </div>
                </div>
                <div class="item">
                	<c:url value="/resource/images/tata.jpeg" var="url4"></c:url>
                    <img class="fourth-slide home-image" src="${url4 }"   style="width:1320px;height:320px" alt="fourth slide" >
                    <div class="container">
                        
                    </div>
                </div>
                 <div class="item">
                 <c:url value="/resource/images/maruthi.jpg" var="url5"></c:url>
                    <img class="fifth-slide home-image " src="${url5 }" style="width:1320px;height:320px" alt="fifth slide">
                    <div class="container">
                        
                    </div>
                </div>
                 
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="color:black">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="color:black">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

</div>
</div><br>
</body>
</html>
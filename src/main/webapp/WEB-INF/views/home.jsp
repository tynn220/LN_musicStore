<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<%--header--%>
<%@include file="/common/header.jsp"%>


<body>
<%--nav-bar--%>
<%@include file="/common/nav-bar.jsp"%>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide size" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner size" role="listbox">
        <div class="item active size">
            <img class="first-slide home-image " src="<c:url value="/template/img/bg6.jpg" /> " alt="First slide" style="height: 800px">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to my's Music Store</h1>
                    <p>Here you can try and buy Instrument, Record and music related Accessories</p>
                    <%--                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>--%>
                </div>
            </div>
        </div>
        <div class="item size" >
            <img class="second-slide home-image size" src="<c:url value="/template/img/bg1.jpg" /> " alt="Second slide"  style="height: 800px">
            <div class="container">
                <div class="carousel-caption">
                    <h1>About Music</h1>
                    <p>Music is the art of arranging sounds in time to produce a composition through the elements of melody, harmony, rhythm, and timbre. It is one of the universal cultural aspects of all human societies.</p>
                    <h3>It brings joy, to all of our hearts</h3>
                </div>
            </div>
        </div>
        <div class="item size">
            <img class="third-slide home-image size" src="<c:url value="/template/img/bg.jpg" /> " alt="Third slide"  style="height: 800px">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Something that can make you feel better</h1>
                    <p>Through ups and downs. Somehow I manage to survive in life.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
</div>


<!-- FOOTER -->
<%@include file="/common/footer.jsp"%>


</body>


</html>


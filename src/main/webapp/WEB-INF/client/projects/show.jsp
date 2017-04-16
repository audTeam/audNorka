<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/common.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/project.css">
<title>案例详情</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <section>
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="<%=baseUrl%>/static/common/client/images/sites/cs1.jpg" alt="pic" class="img-responsive">
                                <div class="carousel-caption">
                                    <h1>Sky Garder</h1>
                                    <h3>London,UK</h3>
                                </div>
                            </div>
                            <div class="item">
                                <img src="<%=baseUrl%>/static/common/client/images/sites/cs2.jpg" alt="pic" class="img-responsive">
                            </div>
                            <div class="item">
                                <img src="<%=baseUrl%>/static/common/client/images/sites/cs3.jpg" alt="pic" class="img-responsive" >
                            </div>
                        </div>
                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="icon-prev"></span>
                            <span class="sr-only" style="color:#fff;">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="icon-next"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </section>
            </div>
        </div>
        <section class="part_two">
            <div class="row">
                <div class="col-xs-12 pic-title col-md-offset-3 col-xs-offset-1"><p>Sky GarDen</p></div>
                <div class="col-md-3 col-xs-12 col-xs-offset-1 col-md-offset-0">
                    <ul class="info">
                        <li class="title-text">Information</li>
                        <li>
                            <ul class="left-inf">
                                <li>Client:</li>
                                <li>Size:</li>
                                <li>Location:</li>
                                <li>Scope:</li>
                            </ul>
                            <ul class="right-inf">
                                <li>CCPACIFIC</li>
                                <li>70kkkk</li>
                                <li>London,UK</li>
                                <li>CCPACIFIC</li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="serv">
                        <li class="title-text">Service</li>
                        <li>CCPACIFIC</li>
                    </ul>
                </div>
                <div class="col-md-6 col-xs-12 col-xs-offset-1 col-md-offset-0">
                    <ul>
                        <li class="title-text">Concept</li>
                        <li class="content-text">In the early 19th century</li>
                        <li class="content-text">The 19th-century English art critic</li>
                    </ul>
                    <ul class="team">
                        <li class="title-text">Team</li>
                        <li class="col-md-4 team-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/designer1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>YUE CHEN</h5></a><h6>shanghai</h6></li>
                        <li class="col-md-4 team-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/designer1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>YUE CHEN</h5></a><h6>shanghai</h6></li>
                        <li class="col-md-4 team-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/designer1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>YUE CHEN</h5></a><h6>shanghai</h6></li>
                        <li class="col-md-4 team-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/designer1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>YUE CHEN</h5></a><h6>shanghai</h6></li>
                        <li class="col-md-4 team-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/designer1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>YUE CHEN</h5></a><h6>shanghai</h6></li>
                        <li class="col-md-4 team-pic"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/designer1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>YUE CHEN</h5></a><h6>shanghai</h6></li>
                    </ul>
                </div>
                <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-1">
                    <ul class="similar">
                        <li class="title-text">Similar</li>
                        <li><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/porject1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>Mixc ZhengZhou</h5></a><h6>shanghai</h6></li>
                        <li><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/porject1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>Mixc ZhengZhou</h5></a><h6>shanghai</h6></li>
                        <li><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/porject1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>Mixc ZhengZhou</h5></a><h6>shanghai</h6></li>
                        <li><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites/porject1.png" alt="pic" class="img-responsive"></a><a
                                href="#"><h5>Mixc ZhengZhou</h5></a><h6>shanghai</h6></li>
                        <li class="view_more"><a href="#">VIEW MORE</a></li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>
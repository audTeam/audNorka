<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/news.css">
<title>新闻动态</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
  <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container-fluid">
      <div class="row">
        <div class="col-md-12">
            <ul>
                <li>
                    <h3>New LandMark Building</h3>
                    <h4>a new built landmark building design by aud</h4>
                </li>
                <li>10/24/2017 Becak Li</li>
            </ul>
        </div>
        <div class="col-md-7">
            <ul>
                <li>
                    <img src="<%=baseUrl%>/static/common/client/images/sites/designer7.png" alt="pic" class="img-responsive">
                </li>
                <li>
                   An architect someone who plans,designs,and reviews the construction of buildings.
                </li>
                <li>
                    An architect someone who plans,designs,and reviews the construction of buildings.
                </li>
                <li>
                   An architect someone who plans,designs,and reviews the construction of buildings.
                </li>
            </ul>
        </div>
        <div class="col-md-3 col-md-offset-2">
            <ul class="col-md-12">
                <li class="col-md-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
                <li class="col-md-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
                <li class="col-md-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
                <li class="col-md-2 share-icon"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/sites//Messages icon.png"></a></li>
            </ul>
            <ul class="col-md-12">
                <li class="first-title">Recent News</li>
                <li><a href="#"><h5>New LandMark Building</h5><h5>design by Becak Li</h5></a><h6>10/24/2017</h6></li>
                <li><a href="#"><h5>New LandMark Building</h5><h5>design by Becak Li</h5></a><h6>10/24/2017</h6></li>
                <li><a href="#"><h5>New LandMark Building</h5><h5>design by Becak Li</h5></a><h6>10/24/2017</h6></li>
                <li><a href="#"><h5>New LandMark Building</h5><h5>design by Becak Li</h5></a><h6>10/24/2017</h6></li>
                <li class="view-more"><a href="#">VIEW MORE</a></li>
            </ul>
            <ul class="col-md-12">
                <li class="first-title">Tages</li>
                <li><h5>inspiration accessories outfie cultural chinese</h5></li>
                
            </ul>
        </div>
    </div>
    </div>
    <jsp:include page="../shared/_footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/news.js"></script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/team.css">
<title>设计团队</title>
</head>
<body>
    <jsp:include page="../shared/_header.jsp"></jsp:include>
    <div class="main container">
        <section class="part-one">
            <div class="row team">
                <div class="col-sm-12"><a href="#">室内设计团队</a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case6_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case6_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case6_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case6_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case5_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case5_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case5_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case7_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case7_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case5_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case6_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-3"><a href="#"><img src="<%=baseUrl%>/static/common/client/images/team/case5_03.png" alt="pic" class="img-responsive"><p>Leo Alvorea</p><p>景观设计</p></a></div>
                <div class="col-sm-12">
                    <nav class="pull-right">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                     </ul>
                    </nav>
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
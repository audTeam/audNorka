<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/sites_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/company-introduce.css">
<title>公司介绍</title>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="main container-fluid">
    <c:import url="../shared/_banner.jsp" />
    <section class="part_two">
        <div class="row">
            <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-0 pc-company">
                <ul class="company-service">
                    <li class="title-text">Our Service</li>
                    ${historyIntroduce.serviceContent }
                </ul>
            </div>
            <div class="col-md-6 col-xs-12 col-xs-offset-1 col-md-offset-1 company-video">
                <ul>
                    <li class="title-text company-profile">Company Profile</li>
                    <li class="content-text">${historyIntroduce.companyHistory} </li>
                    <li class="content-text video">
                       ${historyIntroduce.video}
                        <!-- <embed src="${historyIntroduce.video}" allowfullscreen="true" quality="high" width="100%" height="400" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash"></embed> -->
                    </li>
                </ul>
            </div>
            <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-0 phone-company">
                <ul class="company-service">
                    <li class="title-text">Our Service</li>
                    ${historyIntroduce.serviceContent }
                </ul>
            </div>
            <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-1 phone-clients">
                <ul class="clients">
                    <li class="title-text">Our clients</li>
                    <c:forEach var="cooperation" items="${cooperations}">
                      <li class="col-xs-4 col-md-12"><img src="<%=application.getInitParameter("imageServer")%>/${cooperation.logoUrl }" alt="合作伙伴图片" class="img-responsive"></li>
                    </c:forEach>
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
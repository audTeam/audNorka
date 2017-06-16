<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String baseUrl = request.getContextPath(); %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320,maximum-scale=1.3,user-scalable=no">
<link rel="stylesheet" href="<%=baseUrl%>/static/lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/shared_show.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/phone.css">
<link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/company-introduce.css">
<title>公司介绍</title>
<!--[if lt IE 9]>
  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<jsp:include page="../shared/_header.jsp"></jsp:include>
<div class="main container-fluid">
    <c:import url="../shared/_banner.jsp" />
    <section class="part_two">
        <div class="row">
            <div class="col-md-3 col-xs-12 col-xs-offset-1 col-md-offset-0 pc-company">
                <ul class="company-service">
                    <li class="title-text"><spring:message code="Our_Service" /></li>
                <c:forEach var="companyService" items="${companyServices}">
                  <div>
                    <img alt="" src="<%= application.getInitParameter("imageServer") %>/${companyService.imgUrl}" class="img-responsive">
                    <p>${companyService.content}</p>
                  </div>
                </c:forEach>
                </ul>
            </div>
            <div class="col-md-5 col-xs-12 col-xs-offset-1 col-md-offset-1 company-video">
                <ul>
                    <li class="title-text company-profile"><spring:message code="Company_Profile" /></li>
                    <li class="content-text">${historyIntroduce.companyHistory} </li>
                    <li class="text-center">
                       ${historyIntroduce.video}
                    </li>
                    <!-- 处理视频不能自适应问题 -->
                    <script type="text/javascript">document.getElementById("movie").style.height=document.getElementById("movie").scrollWidth*0.8+"px"</script>
                </ul>
            </div>
            <div class="col-md-2 col-xs-11 col-xs-offset-1 col-md-offset-0 phone-company">
                <ul class="company-service">
                    <li class="title-text"> <spring:message code="Our_Service" /> </li>
                </ul>
                <c:forEach var="companyService" items="${companyServices}">
                  <div>
                    <img alt="" width="100%" src="<%= application.getInitParameter("imageServer") %>/${companyService.imgUrl}" class="img-responsive">
                    <p>${companyService.content}</p>
                  </div>
                </c:forEach>
            </div>
            <div class="col-md-2 col-xs-12 col-xs-offset-1 col-md-offset-1 phone-clients">
                <ul class="clients">
                    <li class="title-text"> <spring:message code="Our_clients" /> </li>
                    <c:forEach var="cooperation" items="${cooperations}">
                      <li class="col-xs-4 col-md-12"><a href="${cooperation.link}"><img src="<%=application.getInitParameter("imageServer")%>/${cooperation.logoUrl }" alt="合作伙伴图片" class="img-responsive"></a></li>
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
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/shared_js.js"></script>
<script type="text/javascript" src="<%=baseUrl%>/static/common/client/js/sites_show.js"></script>
</html>
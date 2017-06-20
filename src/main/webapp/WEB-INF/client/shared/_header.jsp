<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String baseUrl = request.getContextPath();
%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:if test="${pageContext.response.locale=='zh_CN'}">
  <link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/zh_cn.css">
</c:if>
<c:if test="${pageContext.response.locale=='en_US'}">
  <link rel="stylesheet" href="<%=baseUrl%>/static/common/client/css/en_us.css">
</c:if>
<header>
  <div class="container-fluid">
    <div class="row">
      <div class="col-xs-12">
        <nav class="navbar navbar-default nav_one" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="modal" data-target=".bs-example-modal-sm" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="<%=baseUrl%>/">
              <img class="img-responsive" src="<%=baseUrl%>/static/common/client/images/sites/Group_65.png"></a>
          </div>
          <div id="" class="collapse navbar-collapse">
            <ul class="nav navbar-nav ul_one">
              <li>
                <a href="<%=baseUrl%>/">
                  <span data-tag="0" class="home-color">
                    <spring:message code="home" /></span>
                </a>
                <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic home-pic" /></li>
              <li>
                <a href="<%=baseUrl%>/client/projects">
                  <span data-tag="1" class="project-color">
                    <spring:message code="projects" /></span>
                </a>
                <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic project-pic" /></li>
              <li>
                <a href="<%=baseUrl%>/client/aboutUs">
                  <span data-tag="2" class="about-color">
                    <spring:message code="aboutAud" /></span>
                </a>
                <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic about-pic" /></li>
              <li>
                <a href="<%=baseUrl%>/client/news">
                  <span data-tag="3" class="new-color">
                    <spring:message code="news" /></span>
                </a>
                <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic new-pic" /></li>
              <li>
                <a href="<%=baseUrl%>/client/jobs">
                  <span data-tag="4" class="career-color">
                    <spring:message code="jobs" /></span>
                </a>
                <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic career-pic" /></li>
              <li>
                <a href="<%=baseUrl%>/client/aboutUs/contactUs">
                  <span data-tag="5" class="contact-color">
                    <spring:message code="contactUs" /></span>
                </a>
                <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="flg-pic contact-pic" /></li>
            </ul>
          </nav>
          <div class="change-language">
            <c:choose>
              <c:when test="${pageContext.response.locale=='zh_CN'}">
                <a href="${pageContext.request.contextPath}/sites?lang=en_US">EN</a>
              </c:when>
              <c:when test="${pageContext.response.locale=='en_US'}">
                <a href="${pageContext.request.contextPath}/sites?lang=zh_CN">中文</a>
              </c:when>
             </c:choose>
           <!-- <a href="${pageContext.request.contextPath}/sites?lang=en_US">EN</a>
            <a href="${pageContext.request.contextPath}/sites?lang=zh_CN">中文</a> -->
          </div>
        </div>
      </div>
    </div>
    <nav class="navbar navbar-default nav_two" role="navigation">
      <div class="container-fluid">
        <div id="aud-brand-bg" style="height: 30px;">
          <img id="aud-brand" alt="" src="<%=baseUrl%>/static/common/client/images/sites/stripline-1.png">
          <div id="aud-bg" style="height: 30px; background:rgb(202, 55, 38); float:right;"></div>
        </div>
      </div>

      <ul class="nav navbar-nav ul_two" data-tag="1"></ul>
      <!--HOME导航 -->
      <ul class="nav navbar-nav ul_two" data-tag="2">
        <!--PROJECTS导航 -->
        <c:forEach var="projectNavMenu" items="${projectNavMenus}">
          <li>
            <a href="<%=baseUrl%>/client/projectCases/${projectNavMenu.secondNavMenu.id}" class="second-nav">${projectNavMenu.secondNavMenu.name}</a>
            <ul class="nav ul-three">
              <c:forEach var="thridNavMenu" items="${projectNavMenu.thridNavMenu }">
                <li>
                  <a href="<%=baseUrl%>/client/projectCases/${projectNavMenu.secondNavMenu.id}/${thridNavMenu.id}">${thridNavMenu.name}</a></li>
              </c:forEach>
            </ul>
          </li>
        </c:forEach>
      </ul>
      <ul class="nav navbar-nav ul_two" data-tag="3">
        <!--ABOUT US导航 -->
        <li>
          <a href="<%=baseUrl%>/client/aboutUs" class="second-nav">
            <spring:message code="companyProfile" /></a>
        </li>
        <li>
          <a href="<%=baseUrl%>/client/teamMembers" class="second-nav">
            <spring:message code="ourPeople" /></a>
        </li>
      </ul>
      <ul class="nav navbar-nav ul_two" data-tag="4"></ul>
      <!--NEWS导航 -->
      <ul class="nav navbar-nav ul_two" data-tag="5"></ul>
      <!--CAREER导航 -->
      <ul class="nav navbar-nav ul_two" data-tag="6"></ul>
      <!--CONTACT导航 -->
      <div class="search-form">
        <form class="search-input clearfix">
          <label class="pull-right">
            <span class="glyphicon glyphicon-search"></span>
          </label>
          <input type="text" id="bdcsMain" class="pull-right" style="border:1px solid #fff;"></form>
      </div>
    </nav>
  </div>
</header>

<div class="modal bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="background-color:#ca3726;">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content" style="-moz-box-shadow: 0px 0px 0px #888888; box-shadow: 0px 0px 0px #888888;">
      <div class="modal-header" style="padding-top: 20px;padding-bottom: 0px;height: 80px;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <a href="<%=baseUrl%>/">
          <img src="<%=baseUrl%>/static/common/client/images/sites/Group_65.png" class="phone-brand" style="margin-left: 10%;">
        </a>
      </div>
      <div class="modal-body" style="padding-top: 0px;">
        <ul class="firstNav">
          <li>
            <a href="<%=baseUrl%>/">
              <spring:message code="home" /></a>
          </li>
          <li>
            <a href="<%=baseUrl%>/client/projects">
              <spring:message code="projects" /></a>
            <ul class="secondNav">
              <c:forEach var="projectNavMenu" items="${projectNavMenus}">
                <li>
                  <a href="<%=baseUrl%>/client/projectCases/${projectNavMenu.secondNavMenu.id}">${projectNavMenu.secondNavMenu.name}</a>
                  <ul class="thirdNav">
                    <c:forEach var="thridNavMenu" items="${projectNavMenu.thridNavMenu }">
                      <li>
                        <a href="<%=baseUrl%>/client/projectCases/${projectNavMenu.secondNavMenu.id}/${thridNavMenu.id}">${thridNavMenu.name}</a></li>
                    </c:forEach>
                  </ul>
                </li>
              </c:forEach>
            </ul>
          </li>
          <li>
            <a href="<%=baseUrl%>/client/aboutUs">
              <spring:message code="aboutAud" /></a>
            <ul class="secondNav">
              <li>
                <a href="<%=baseUrl%>/client/aboutUs">
                  <spring:message code="companyProfile" /></a>
              </li>
              <li>
                <a href="<%=baseUrl%>/client/teamMembers">
                  <spring:message code="ourPeople" /></a>
              </li>
            </ul>
          </li>
          <li>
            <a href="<%=baseUrl%>/client/news">
              <spring:message code="news" /></a>
          </li>
          <li>
            <a href="<%=baseUrl%>/client/jobs">
              <spring:message code="jobs" /></a>
          </li>
          <li>
            <a href="<%=baseUrl%>/client/aboutUs/contactUs">
              <spring:message code="contactUs" /></a>
          </li>
          <li style="border-color: #000;">
            <div class="search-form">
              <div class="search-input clearfix">
                <label class="pull-left">
                  <span class="glyphicon glyphicon-search2"></span>
                </label>
                <input type="text" class="pull-left" placeholder="Search AUD" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid"></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String baseUrl = request.getContextPath();
%>
<div class="row">
    <div class="col-xs-12 myslides">
            <div id="carousel-example-generic" class="carousel slide " data-ride="carousel">
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                  <c:forEach var="banner" items="${banners}" varStatus="status">
                    <c:if test="${status.index==0}">
                      <div class="item active">
                    </c:if>
                    <c:if test="${status.index!=0}">
                      <div class="item">
                    </c:if>
                        <img src="<%=application.getInitParameter("imageServer") %>/${banner.imgUrl}" alt="pic" class="img-responsive">
                        <div class="carousel-caption">
                            <h1>${banner.name }</h1>
                            <h3>${banner.address }</h3>
                        </div>
                    </div>
                  </c:forEach>
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
    </div>
</div>
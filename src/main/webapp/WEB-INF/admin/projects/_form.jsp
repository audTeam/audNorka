<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String baseUrl = request.getContextPath(); %>
<div id="base-url" data-base-url="<%=baseUrl%>" class="hidden"></div>
<form action="${param.actionUrl}" method="POST" class="form-horizontal">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PUT"> -->
    <input type="hidden" name="id" value="${project.id}">
  </c:if>
  <input type="hidden" name="navMenuId" value="${secondNavMenu.id}">
  <div class="form-group">
    <label class="control-label col-md-2">案例名称</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="name" value="${project.name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">项目地址</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="address" value="${project.address}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">客户</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="client" value="${project.client}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">占地面积</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="size" value="${project.size}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">项目详细地址</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="location" value="${project.location}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">领域</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="scope" value="${project.scope}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">服务</label>
    <div class="col-md-9">
      <script id="service-container" type="text/plain" name="service" style="height:200px; width: 100%;">${project.service}</script>
    </div>
  </div>
  <div class="form-group">
    <label for="" class="col-md-2 control-label">项目图片</label>
    <div class="col-md-9" id="imgUrls">
      <input id="imgUrl" type="file" multiple class="file-loading form-control">
      <c:forEach var="image" items="${images}">
        <!-- <input type='hidden' name='imgUrls' class="imagePaths" data-image-id="${image.id }" data-image-path="${pageContext.request.contextPath}/${image.imgUrl}" value="${image.imgUrl}"> -->
        <input type='hidden' class="imagePaths" data-image-id="${image.id }" data-image-path="<%=application.getInitParameter("imageServer") %>/${image.imgUrl}">
      </c:forEach>
      <p class="help-block">支持jpg、jpeg、png、gif格式，宽度1280px，高度730px</p>
    </div>
  </div> 
  <div class="form-group">
    <label class="control-label col-md-2">内容</label>
    <div class="col-md-9">
      <script id="container" name="content" type="text/plain" name="content" style="height:500px; width: 100%;">${project.content}</script>
    </div>
  </div>
  <div class="form-group">
    <div class="row">
      <div class="col-md-4 col-md-offset-5">
        <button type="submit" class="btn btn-info">提交</button>
      </div>
    </div>
  </div>
</form> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String imageServer = application.getInitParameter("imageServer"); %>
<form class="form-horizontal" method="post" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PUT"> -->
    <input type="hidden" name="id" value="${companyService.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-2 control-label">服务名称</label>
    <div class="col-md-9">
      <input type="text" name="name" value="${companyService.name}" class="form-control">
    </div>
  </div>
 <div class="form-group">
    <label class="col-md-2 control-label">服务详情</label>
    <div class="col-md-9">
      <script id="container" type="text/plain" name="content" style="height:200px; width: 100%;">${companyService.content}</script>
      <!-- <textarea rows="5" name="content" class="form-control">${companyService.content}</textarea> -->
    </div>
  </div>
  <c:if test="${companyService.imgUrl != null}">
  <div class="form-group">
    <label class="col-md-2 control-label">图片</label>
    <div class="col-md-9">
      <img alt="服务图片" class="img-responsive" src="<%=imageServer%>/${companyService.imgUrl}">
    </div>
  </div>
  </c:if>
  <div class="form-group">
    <label class="col-md-2 control-label">图片文件</label>
    <div id="uploadFileDiv" class="col-md-9">
      <input id="pdFile" name="file" type="file">
      <p class="help-block">支持jpg、jpeg、png、gif格式，宽度250px，高度55px</p>
      <p class="help-block"></p>
      <br />
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-5">
      <button class="btn btn-info" type="submit">提交</button>
    </div>
  </div>
</form>

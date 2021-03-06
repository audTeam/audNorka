<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String imageServer = application.getInitParameter("imageServer"); %>
<form class="form-horizontal" method="post" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PUT"> -->
    <input type="hidden" name="id" value="${banner.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-2 control-label">项目名称</label>
    <div class="col-md-9">
      <input type="text" name="name" value="${banner.name}" class="form-control">
    </div>
  </div>
 <div class="form-group">
    <label class="col-md-2 control-label">项目地址</label>
    <div class="col-md-9">
      <input type="text" name="address" value="${banner.address}" class="form-control"> 
    </div>
  </div>
  <c:if test="${banner.imgUrl != null}">
  <div class="form-group">
    <label class="col-md-2 control-label">图片</label>
    <div class="col-md-9">
      <img alt="banner图片" class="img-responsive" src="<%=imageServer%>/${banner.imgUrl}">
    </div>
  </div>
  </c:if>
  <div class="form-group">
    <label class="col-md-2 control-label">图片文件</label>
    <div id="uploadFileDiv" class="col-md-9">
      <input id="pdFile" name="file" type="file">
      <div id="fileError" class="help-block"></div>
      <p class="help-block">支持jpg、jpeg、png、gif格式，宽度1280px，高度730px</p>
      <br />
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-5">
      <button class="btn btn-info" type="submit">提交</button>
    </div>
  </div>
</form>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" method="POST" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <input type="hidden" name="_method" value="PATCH">
    <input type="hidden" name="id" value="${newsCategory.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-4 control-label">标题</label>
    <div class="col-md-8">
      <input type="text" name="title" value="${newsCategory.title}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">新闻摘要</label>
    <div class="col-md-8">
      <input type="text" name="subTitle" value="${newsCategory.subTitle}" class="form-control">
    </div>
  </div>
  <c:if test="${banner.imgUrl != null}">
  <div class="form-group">
    <label class="col-md-4 control-label">头图图片</label>
    <div class="col-md-8">
      <img alt="banner图片" class="img-responsive" src="${pageContext.request.contextPath}/${banner.imgUrl}">
    </div>
  </div>
  </c:if>
  <div class="form-group">
    <label class="col-md-4 control-label">头图图片</label>
    <div id="uploadFileDiv" class="col-md-8">
      <input id="pdFile" name="file" type="file">
      <div id="fileError" class="help-block"></div>
      <br />
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">新闻内容</label>
    <div class="col-md-8">
      <textarea rows="5" class="form-control" name="content">${newsCategory.content}</textarea>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-3">
      <button class="btn btn-info" type="submit">提交</button>
    </div>
  </div>
</form>
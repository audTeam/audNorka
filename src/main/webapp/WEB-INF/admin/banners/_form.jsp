<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" method="POST" action="${param.actionUrl}" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <input type="hidden" name="_method" value="PATCH">
    <input type="hidden" name="id" value="${banner.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-4 control-label">名称</label>
    <div class="col-md-8">
      <input type="text" name="name" value="${banner.name}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">链接</label>
    <div class="col-md-8">
      <input type="text" name="url" value="${banner.url }" class="form-control"> 
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">图片</label>
    <div class="col-md-8">
      <input type="text" name="imgUrl" value="${banner.imgUrl }" class="form-control"> 
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">图片文件</label>
    <div class="col-md-8">
      <input type="file" name="myfiles" class="form-control"/>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-3">
      <button class="btn btn-info" type="submit">提交</button>
    </div>
  </div>
</form>
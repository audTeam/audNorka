<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String imageServer = application.getInitParameter("imageServer"); %>
<form class="form-horizontal" method="post" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PUT"> -->
    <input type="hidden" name="id" value="${jobCategory.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-4 control-label">分类名称</label>
    <div class="col-md-8">
      <input type="text" name="name" value="${jobCategory.name}" class="form-control">
    </div>
  </div>
 <div class="form-group">
    <label class="col-md-4 control-label">分类简介</label>
    <div class="col-md-8">
      <script id="container" type="text/plain" name="content" style="height:500px">${jobCategory.content}</script> 
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-3">
      <button class="btn btn-info" type="submit">提交</button>
    </div>
  </div>
</form>
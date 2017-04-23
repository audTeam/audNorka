<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" method="POST" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PATCH"> -->
    <input type="hidden" name="id" value="${job.id}">
  </c:if>
  <div class="form-group">
    <label class="col-md-4 control-label">职位名称</label>
    <div class="col-md-8">
      <input type="text" name="position" value="${job.position}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">招聘人数</label>
    <div class="col-md-8">
      <input type="text" name="jobNumber" value="${job.jobNumber}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">地址</label>
    <div class="col-md-8">
      <input type="text" name="location" value="${job.location}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">详细地址</label>
    <div class="col-md-8">
      <input type="text" name="locationDetail" value="${job.locationDetail}" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">职位描述</label>
    <div class="col-md-8">
      <script id="container" type="text/plain" name="description" class="form-control" style="height:500px">${job.description}</script>
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-8">
      <button class="btn btn-default col-md-offset-3" type="submit">提交</button>
    </div>
  </div>
</form>
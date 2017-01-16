<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal" method="POST" action="${param.actionUrl}" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <input type="hidden" name="_method" value="PATCH">
    <input type="hidden" name="id" value="${job.id}">
  </c:if>
  <div class="form-group">
    <div class="col-md-12">
      <script id="container" type="text/plain" name="content">${job.content}</script>
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-8">
      <button class="btn btn-default col-md-offset-3" type="submit">提交</button>
    </div>
  </div>
</form>
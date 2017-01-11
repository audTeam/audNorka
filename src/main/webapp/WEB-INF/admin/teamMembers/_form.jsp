<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String baseUrl = request.getContextPath(); %>

<form action="${param.actionUrl}" method="POST" class="form-horizontal" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <input type="hidden" name="_method" value="PATCH">
    <input type="hidden" name="id" value="${teamMember.id}">
  </c:if>
  <div class="form-group">
    <label class="control-label col-md-4">姓名</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="name" value="${teamMember.name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">职位</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="position" value="${teamMember.position}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">地址</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="zhAddress" value="${teamMember.zhAddress}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">联系电话</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="phoneNumber" value="${teamMember.phoneNumber}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">荣誉</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="honor" value="${teamMember.honor}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">擅长领域</label>
    <div class="col-md-8">
      <input type="text" class="form-control" name="goodAt" value="${teamMember.goodAt}">
    </div>
  </div>
  <c:if test="${teamMember.imgUrl != null}">
    <div class="form-group">
      <label class="col-md-4 control-label">头像</label>
      <div class="col-md-8">
        <img alt="banner图片" class="img-responsive" src="${pageContext.request.contextPath}/${teamMember.imgUrl}">
      </div>
    </div>
  </c:if>
  <div class="form-group">
    <label class="col-md-4 control-label">头像</label>
    <div id="uploadFileDiv" class="col-md-8">
      <input id="pdFile" name="file" type="file">
      <div id="fileError" class="help-block"></div>
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label">个人名片</label>
    <div id="docFileDiv" class="col-md-8">
      <input id="docFile" name="personFile" type="file">
      <div id="docFileError" class="help-block"></div>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4">简介</label>
    <div class="col-md-8">
      <textarea rows="10" class="form-control" name="brief">${teamMember.brief}</textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="row">
      <div class="col-md-12">
        <button type="submit" class="btn btn-info col-md-offset-8">提交</button>
      </div>
    </div>
  </div>
</form> 

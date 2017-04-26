<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String baseUrl = request.getContextPath(); %>

<form action="${param.actionUrl}" method="POST" class="form-horizontal" id="uploadForm" enctype="multipart/form-data">
  <c:if test="${param.method=='PATCH'}">
    <!-- <input type="hidden" name="_method" value="PATCH"> -->
    <input type="hidden" name="id" value="${teamMember.id}">
  </c:if>
  <div class="form-group">
    <label class="control-label col-md-2">姓名</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="name" value="${teamMember.name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">职位</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="position" value="${teamMember.position}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">education_background</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="educationBackground" value="${teamMember.educationBackground}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">workExperience</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="workExperience" value="${teamMember.workExperience}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">membership</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="membership" value="${teamMember.membership}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">重点项目</label>
    <div class="col-md-9">
      <input type="text" class="form-control" name="keyProject" value="${teamMember.keyProject}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">参与的项目</label>
    <div class="col-md-9">
      <c:set var="hasFind" value="false"></c:set>
      <c:forEach var="project" items="${projects}">
        <c:forEach var="teamMemberProject" items="${teamMemberProjects}">
          <c:if test="${teamMemberProject.projectId==project.id}">
            <c:set var="hasFind" value="true"></c:set>
          </c:if>
        </c:forEach>
        <c:if test="${hasFind==true}">
          <div><input type="checkbox" name="projectIds" value="${project.id}" checked="checked">${project.name}</div>
        </c:if>
        <c:if test="${hasFind==false}">
          <div><input type="checkbox" name="projectIds" value="${project.id}">${project.name}</div>
        </c:if>
      </c:forEach>
    </div>
  </div>
  <c:if test="${teamMember.imgUrl != null}">
    <div class="form-group">
      <label class="col-md-2 control-label">头像</label>
      <div class="col-md-9">
        <img alt="团队头像" class="img-responsive" src="<%=application.getInitParameter("imageServer")%>/${teamMember.imgUrl}">
      </div>
    </div>
  </c:if>
  <div class="form-group">
    <label class="col-md-2 control-label">头像</label>
    <div id="uploadFileDiv" class="col-md-9">
      <input id="pdFile" name="file" type="file">
      <div id="fileError" class="help-block"></div>
      <p class="help-block">支持jpg、jpeg、png、gif格式，大小不超过2.0M，宽x高:215x117</p>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-2">简介</label>
    <div class="col-md-9">
      <script id="container" name="brief" type="text/plain" name="brief" style="height:500px; width: 100%;">${teamMember.brief}</script>
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

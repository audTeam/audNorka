<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String baseUrl = request.getContextPath();
%>
<script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=2176913044449359931' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);})();</script>
<footer >
    <section class="container-fluid phone-footer">
        <div class="footer-text">
            <img src="<%=baseUrl%>/static/common/client/images/sites/triangle.png" alt="pic" class="footer-pic"/>
            <span>Copyright 2014-2016 AUD建筑设计有限公司 蜀ICP备 16012568号</span>
        </div>
    </section>
</footer> 
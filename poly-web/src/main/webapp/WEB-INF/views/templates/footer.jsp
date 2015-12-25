<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="menu" uri="/WEB-INF/mytag/MenuHelper.tld" %>
<spring:url value="/resources/core/images/" var="img" />
<c:set var="baseURL" value="${pageContext.request.requestURL.substring(0, pageContext.request.requestURL.length() - pageContext.request.requestURI.length())}${pageContext.request.contextPath}/" />
<div class="footer">
  <div class="linkfooter ">
    <div class="container">
      <div class="row">
      <c:forEach items="${menu:getMenu(-1,2)}" var="item">
        <div class="col-sm-4">
          <div class="simple_flipper"> <a href="${item.url}" target="_blank"><i class="fa fa-tvi front"></i>${item.name}</a> </div>
        </div>
       </c:forEach>
      </div>
    </div>
  </div>
  <div class="inforfooter container">
    <ul class="clearfix" style="text-transform: uppercase;">
    	<c:forEach items="${menu:getMenu(-1,3)}" var="item">
    		<li><a href="${item.url}">${item.name}</a></li>
    	</c:forEach>     
    </ul>
    <div class="clearfix infof">
      <p>TRUNG TÂM ANH NGỮ POLY</p>
      <p> 44 Phan Khiêm Ích, Phường Tân Phong, Quận 7, HCMC, Việt Nam<br/>
        Tel: +84 08.54107659   |   Email: tracy.tu@koreapolyschool.com</p>
      <p class="social"><a href="#"><span class="fa fa-facebook"></span></a><a href="#"> <span class="fa fa-youtube"></span></a></p>
    </div>
  </div>
</div>
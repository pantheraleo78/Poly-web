<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <div class="col-sm-9 contentmainright">
           <div class="title1 clearfix">
      		<h2>Thư viện Poly</h2>
    	
    		</div>
    		  
          <div class="tab-content">
          <div id="tvanh" class="tab-pane fade in active">
              
            <ul class="row listanh">
            <c:forEach items="${lstImage}" var="img">
              <li class=" col-sm-4 col-md-4">
                <div class="clearfix pic-hv">
                  <img src="${img.url}"  alt="${img.alt}" width="371px" height="371px">
                </div>                
              </li>
            </c:forEach>
            </ul>
            </div>                      
        </div>
    </div>
    <!--endcontentmain--> 
    
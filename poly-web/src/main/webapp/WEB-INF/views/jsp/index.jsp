<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="slider" style="z-index: -999">
  <div class="tp-banner-container">
    <div class="tp-banner" >
      <ul>
        <!-- SLIDE  --> 
        <!-- SLIDE  -->
        <li data-transition="fade" data-masterspeed="1000" data-delay="6000" > 
          <!-- MAIN IMAGE --> 
          <img src="./resources/core/images/home.png"  alt="slidebg1"  data-bgfit="contain" data-bgposition="left top" data-bgrepeat="no-repeat" width="100%"> 
          <!-- LAYERS --> 
          <!-- LAYER NR. 1 -->
          <div class="tp-caption lightgrey_divider skewfromrightshort sft  fadeout caption1"
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="1200"
						data-easing="Power3.easeInOut"
						data-splitin="chars"
						data-splitout="chars"
						data-elementdelay="0.08"
						data-endelementdelay="0.08"
					
						style="z-index: 2; max-width: auto; max-height: auto; white-space: nowrap;"
						
                        
                        >Learn today <br/>
            Lead tomorrow </div>
          <div class="tp-caption lightgrey_divider skewfromrightshort fade fadein caption2"
					
						data-speed="500"
						data-start="1300"
						data-easing="Power4.easeOut"><a href="#"> <span> Tìm hiểu thêm</span></a> </div>
        </li>
       
      </ul>
      <div class="tp-bannertimer"></div>
    </div>
  </div>
  <script type="text/javascript">
 				 $(document).ready(function() {
  						alert('ss');
						   $('.tp-banner').revolution(
						{
							delay:6000,
							startwidth:1124,
							startheight:591,
							fullWidth:"on",
						    autoHeight:"on",
						navigationType:"bullet",
						navigationArrows:"solo",
						navigationStyle:"round",
							hideBulletsOnMobile:"off",
						hideArrowsOnMobile:"off"							
						});
				});
			</script> 
  <!-- END REVOLUTION SLIDER --> 
</div>
<!--slide-->
<div class="container  ">
  <div class="boxborder clearfix overflowed_content">
    <div class="row">
    <c:forEach items="${lstIcon}" var="icon">
      <div class="wpb_column col-sm-3 icon_box "> <a href=" ${icon.anchor }"><img src=" ${icon.image }"/>
        ${icon.content }
        </a> </div>
      </c:forEach>      
    </div>
  </div>
  <!--end khoa hoc Poly-->
  <div class="boxborder clearfix boxwhy">
    <div class="title1 clearfix">
      <h2>tại sao poly <span>khác biệt</span></h2>
      <p>Chúng Tôi đào tạo 1% những người giỏi nhất trong 100% nói tiếng</p>
    </div>
    <div class="row why">
      <ul>
      <c:forEach items="${lst13}" var="item">
        <li class="col-md-15  col-sm-6">
          <div class=" clearfix textinfo">
            <div class="pic"> <img src="${item.image}" class="img-responsive" alt=""> </div>
          	${item.content }
           <div class="show_more"> <a class="btn btn-default" href="${item.anchor }" title="View more">View more</a> </div>
          </div>
        </li>
        </c:forEach>
      </ul>
    </div>
    <div class="info-2 clearfix">
      <div class="row">
        <div class="col-md-6">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe src="https://www.youtube.com/embed/Icq60Uxd3As"allowfullscreen></iframe>
          </div>
        </div>
        <div class="col-md-6">
          <div class="tit1">
            <h3>cảm nghĩ <span>của phụ huynh</span></h3>
          </div>
          <div class="jcarousel-wrapper camnghi">
            <div class="jcarousel">
              <ul>
              <c:forEach items="${lstFeedback}" var="feed">
                <li> <img class="img-circle"  src="./resources/core/images/sider.png" alt="">
                  <p class="name">${feed.name }</p>
                  <p>${feed.chuc }</p>
                  <p class="text-justify">${feed.content }</p>
                </li>   
                </c:forEach>            
              </ul>
            </div>
            <a href="#" class="jcarousel-control-prev">&lsaquo;</a> <a href="#" class="jcarousel-control-next">&rsaquo;</a> </div>
        </div>
      </div>
    </div>
  </div>
  <!--end taisaochon Poly-->
  <div class="thuvien clearfix">
    <div class="title1 clearfix">
      <h2>Thư viện Poly</h2>
    </div>
    <ul class="nav nav-pills">
      <li class="active"><a data-toggle="pill" href="#tvanh">hình ảnh
        <div class="magic_line" ></div>
        </a></li>
      <li><a data-toggle="pill" href="#tvvideo">video
        <div class="magic_line" ></div>
        </a></li>
    </ul>
    <div class="tab-content">
      <div id="tvanh" class="tab-pane fade in active">
        <ul class="row listanh">
        <c:forEach items="${lstImage}" var="img">
          <li class=" col-sm-4 col-md-4">
            <div class="clearfix pic-hv"> <a href="thuvien?id=${img.id}"><img src="${img.img_avatar}"  alt="">
              <div class="text-hv"> ${img.title} </div>
              </a> </div>
          </li>
         </c:forEach>         
        </ul>
      </div>
      <div id="tvvideo" class="tab-pane">
        <ul class="row listanh">
        <c:forEach items="${lstVideo}" var="video">
          <li class=" col-sm-4 col-md-4">
            <div class="clearfix pic-hv"> <a href="thuvien?id=${video.id }"><img src="${video.img_avatar }"  alt="">
              <div class="text-hv"> <span class="fa fa-play-circle"></span> </div>
              </a> </div>
          </li>
          </c:forEach>       
        </ul>
      </div>
    </div>
  </div>
</div>
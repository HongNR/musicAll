<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
 	<jsp:param name="title" value="GoodsPage"/>
</jsp:include>

  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
	<link href="${path }/resources/css/store/cart.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
<style>
	.card-body {margin: 8%; margin-bottom: -13%;}
	/* .col-sm-3 {width: 22%;} */
	.col-lg-3 {width: 21%;}
	.col-md-4 {width: 31.33333333%; height: 559px; padding: 3%;  border-radius: 30px; font-size: 1px; text-align: center;
				background-color: #b5b5b51a; margin: 1%;}
	
	.card-body-1 {margin: 8%;}
	.h2 {color: #d73535;}
	.h4 {padding-right: 9%;}
	#addtocart {border: none; background-color: transparent;}
	.btn {padding: 8px 14px;}
	.a {overflow: hidden;}
	.a img {
	  transition: all 0.3s linear;
	}
	.a:hover img {
	  transform: scale(1.15);
	}
</style>
<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->



<!-- Start Content -->
    <div class="container py-5" style="margin: 8%; margin-left: 14%; width: 70%;">
        <div class="row" style="width: 106%; margin-left: -6%;">

            <div class="col-lg-3">
                <h1 class="h3 pb-4">태그 검색</h1>
                <div style="margin-top: 13%;">
                <%-- <c:if test="${not empty goods }">
                	<c:forEach var="g" items="${goods }">
                		<a class="h4 text-dark text-decoration-none mr-3" href="${path }/goods/goodsLowSort.do"><c:out value="#${g.gdTag }" /></a>
		        	</c:forEach>
		        </c:if> --%>
			        	<button style="border: none; background-color: transparent; width: 25%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=키링')"><a class="h4 text-dark text-decoration-none mr-3">#키링</a></button>
			        	<button style="border: none; background-color: transparent; width: 32%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=텀블러')"><a class="h4 text-dark text-decoration-none mr-3">#텀블러</a></button>
			        	<button style="border: none; background-color: transparent; width: 25%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=가방')"><a class="h4 text-dark text-decoration-none mr-3">#가방</a></button><br><br>
			        	<button style="border: none; background-color: transparent; width: 32%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=스티커')"><a class="h4 text-dark text-decoration-none mr-3">#스티커</a></button>
			        	<button style="border: none; background-color: transparent; width: 25%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=책')"><a class="h4 text-dark text-decoration-none mr-3">#책</a></button><br><br>
			        	<button style="border: none; background-color: transparent; width: 50%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=브로치/뱃지')"><a class="h4 text-dark text-decoration-none mr-3">#브로치/뱃지</a></button><br><br>
			        	<button style="border: none; background-color: transparent; width: 32%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=마그넷')"><a class="h4 text-dark text-decoration-none mr-3">#마그넷</a></button>
			        	<button style="border: none; background-color: transparent; width: 40%;"
			        		onclick="location.assign('${path }/goods/tagSearch.do?gdTag=ost앨범')"><a class="h4 text-dark text-decoration-none mr-3">#OST앨범</a></button>

				</div>
            </div>

            <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-inline shop-top-menu pb-3 pt-1">
                            <li class="list-inline-item">
                                <a class="h5 text-dark text-decoration-none mr-3" href="${path }/goods/goodsMain.do">All</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="h5 text-dark text-decoration-none mr-3" href="${path }/goods/goodsLowSort.do">낮은 가격순 ↓</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="h5 text-dark text-decoration-none" href="${path }/goods/goodsHighSort.do">높은 가격순 ↑</a>
                            </li>
                            <li>
                            	<a class="h5 text-dark text-decoration-none" href="${path }/mypage/shoppingList.do">내 구매내역</a>
                            </li>
                        </ul>
                    </div>
                </div>
                
               <div id="cart" class="cart" data-totalitems="0" style="float: right;">
				  <button type="button" class="btn btn-secondary" onclick="location.assign('${path }/goods/goodsCart.do?memberNo=${loginMember.member_No }')">
		                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
						  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
						</svg>
           			</button>
				</div>
						
                
                <div class="row" >
                	<c:if test="${not empty goods }">
                		<c:forEach var="g" items="${goods }">
	                    <div class="col-md-4" >
	                        <div class="card mb-4 product-wap rounded-0">
	                        	<div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center"
	                        			style="height: 73px;">
	                                <ul class="list-unstyled">
	                                   <li><a href="${path }/goods/goodsView.do?gdCode=${g.gdCode }&memberNo=${loginMember.member_No }" class="h3 text-decoration-none"><c:out value="${g.gdName }"/></a></li>
	                                   
	                                </ul>
	                            </div>
	                            <c:if test="${not empty img }">
			                		<c:forEach var="i" items="${img }">
				                		<c:if test="${i.gdCode == g.gdCode }">
				                            <div class="a card rounded-0" >
				                               <img src="${path }/resources/upload/goods/${i.imName}" id="countimg1" style="width: 250px;height: 300px;">
				                            </div>
		                            	</c:if>
		                			</c:forEach>
		            			</c:if>
	                            
	                            <div class="card-body">
	                            
	                            	<div class="card-body-1">
	                                	<a class="h2 text-decoration-none"><fmt:formatNumber value="${g.gdPrice }" pattern="#,###" />원</a>
	                                </div>
	                                
	                                <div class="card-body-1">
		                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
		                                    <li class="h5 text-decoration-none">#<c:out value="${g.gdTag }"/></li>
		                                    
		                                </ul>
	                                </div>
	                                
	                                <div class="card-body-1">
		                                
										<div class="page-wrapper">
										  <a><button class="addtocart" id="${g.gdCode }">
											  <span class="cart-item">
											    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-cart-plus" viewBox="0 0 16 16">
													<path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
													<path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
												</svg>
											   </span>
										  </button></a>
										</div>
			                                   
	                                </div>
	                                
	                            </div>
	                            
	                        </div>
	                    </div>
                    	</c:forEach>
                    </c:if>
               
                    </div>
                    
                <div class="row">
                    <center>${pageBar }</center>
                    <a href="#" class="btn btn-sm btn-danger btn-lg-square back-to-top" style="float: right; margin-top: 0%;"><i class="bi bi-arrow-up"></i></a>
                </div>
            </div>

        </div>
        
  
	</div>
    <!-- End Content -->

<!-- 스크립트 -->
	<script>
		var $js = jQuery.noConflict();
		
		$(document).ready(function(){
			
			//장바구니 개수 출력
			var cart = $('#cart');
			var cartTotal = cart.attr('data-totalitems', '${total}');
			
			//장바구니 클릭 이벤트
			  $('.addtocart').on('click',function(){
				 
				//로그인 x  
				<c:if test="${loginMember==null }">
					alert("로그인 후 이용해주세요.");
				</c:if>
			    
				//로그인 o
				<c:if test="${loginMember!=null }">
				    var button = $(this);
				  	
					//var newCartTotal = ${total};
					
				    var newCartTotal = parseInt(cart.attr('data-totalitems'));
				    
	
				    //장바구니 담기 기능
				    var ctCount = 1;
				    var gdCode = $(this).attr('id');
				    
				    console.log(gdCode);
				    
				    var member_no = ${loginMember.member_No };
				    
				    let g = {
				    		
				    		"ctCount" : ctCount,
				    		"gdCode" : gdCode,
				    		"member_no" : member_no
				    		
				    };
				    
				    $.ajax({
				    	url: "${path}/goods/addCart.do",
				    	data: g,
				    	type: "post",
				    	dataType: "json",
				        success: data=>{
				        	
				        	if(data=='1') {
				        		
				        		//장바구니에 추가 성공시 애니메이션
				        		button.addClass('sendtocart');
				        
							    
							    setTimeout(function(){
							      button.removeClass('sendtocart');
							      //장바구니 개수 변경
							      //newCartTotal = ${total}+1;
							      cart.addClass('shake').attr('data-totalitems', newCartTotal+1);
							      setTimeout(function(){
							        cart.removeClass('shake');
							        setTimeout(function(){
							        	//성공시
							        	alert("장바구니에 추가하였습니다.");
							        },200)
							      },500)
							    },1000);
				        	} 
						},
						error: function(){
							alert("이미 추가된 상품입니다.")
						}
					});
			    
			    </c:if>
			    
			  });
			
			})
	</script>


    


    <!-- Back to Top -->

</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
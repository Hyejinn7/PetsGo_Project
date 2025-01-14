<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>PetsGo</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <!-- main CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main_petsgo.css">
    <!-- map CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kakao_map.css">

   <link rel='stylesheet' href='${pageContext.request.contextPath}/css/swiper.min.css'>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/comu_style.css">


<!-- 카카오톡 공유하기 -->
    <!-- <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
         integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/" 
         crossorigin="anonymous">
    </script> -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.1.js"></script>
  
	<script type="text/javascript">
		//Kakao.init('d32f3063e698e99009c22188c7a65c7e'); //혜진 키
		
		$(function() {
			$(".form_btn").click(function() {
				let campAddr = $("#addr_select").val();
				if(campAddr=='경기도 지역명 검색') campAddr = '';
				
				let resiPeople = $("#people_select").val();
				if(resiPeople=='캠핑 인원') resiPeople = 0;
				
				let checkIn = $("#datepicker_1").val().split('/');
				if(!$("#datepicker_1").val()=='') checkIn = checkIn[2].split('0')[1]+"/"+checkIn[0]+"/"+checkIn[1];
				else checkIn = null;
				
				let checkOut = $("#datepicker_2").val().split('/');
				if(!$("#datepicker_2").val()=='') checkOut = checkOut[2].split('0')[1]+"/"+checkOut[0]+"/"+checkOut[1];
				else checkOut = null;
				
				location.href="/camp/selectAll?checkIn="+checkIn+"&checkOut="+checkOut+"&campAddr="+campAddr+"&resiPeople="+resiPeople; 	
			});
		});

	</script>
	
	<style type="text/css">
	  .camp_title {font-size: 16px; font-family: SCDream3;}
	</style>

</head>

<body>

    <!-- banner part start-->
    <section class="banner_part" style="">
        <div class="container" alt="main_banner"></div>
    </section>
    <!-- banner part start-->

    <!-- 캠핑장예약검색 start-->
    <section class="booking_part">
        <div class="container">
         <div class="search_text">Play Share Stay, 펫츠GO!</div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="booking_content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                <div class="booking_form">
                                    <form action="#">
                                        <div class="form-row">
                                            <div class="form_colum">
                                                <select class="nc_select" id="addr_select">
                                                    <option selected>경기도 지역명 검색</option>
                                                    <option value="포천시">포천시</option>
                                                    <option value="평택시">평택시</option>
                                                    <option value="여주시">여주시</option>
                                                    <option value="가평군">가평군</option>
                                                    <option value="동두천시">동두천시</option>
                                                    <option value="안산시">안산시</option>
                                                    <option value="김포시">김포시</option>
                                                    <option value="하남시">하남시</option>
                                                    <option value="용인시">용인시</option>
                                                    <option value="파주시">파주시</option>
                                                    <option value="연천시">연천시</option>
                                                    <option value="광주시">광주시</option>
                                                    <option value="양평군">양평군</option>
                                                    <option value="남양주시">남양주시</option>
                                                    <option value="양주시">양주시</option>
                                                    <option value="성남시">성남시</option>
                                                    <option value="안성시">안성시</option>
                                                    
                                                </select>
                                            </div>

                                            <div class="form_colum">
                                                <input id="datepicker_1" placeholder="체크인 날짜">
                                            </div>
                                            
                                            <div class="form_colum">
                                                <input id="datepicker_2" placeholder="체크아웃 날짜">
                                            </div>

                                            <div class="form_colum">
                                                <select class="nc_select" id="people_select">
                                                    <option selected>캠핑 인원</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                </select>
                                            </div>
                                            
                                            <div class="form_btn">
                                                <a href="#" class="btn_1" id="selectfBtn">search</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 캠핑장예약검색 end-->

    <!--주간 펫츠고 인기순 영역-->
    <section class="top_place section_padding" style="padding-top: 240px;">
        <div class="container">
             <span style="color: #25483a; font-family: BMJUA; font-size: 30px;">이번주 펫츠GO! PICK!</span>

            <div class="row">            
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                    	<img src="${pageContext.request.contextPath}/img/seryun/${fn:split(campList[0].campFilename,',')[0]}" alt="" 
                        	 style="border-radius: 6px; width: 400px; height: 300px;">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                        	<div class="hover_text_iner">
                            	<div class="header-in-card__share-and-like">
                        			<div class="share-block">
                            			<div class="share-block__share-icon"><span></span><span></span><span></span><span></span><span></span></div>
                                		<div class="share-block__facebook-icon">
                                    		<a class="kakaotalk-sharing-btn">
					                           <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
					                                alt="카카오톡 공유 보내기 버튼" />
                              				</a>
                              			</div>                    
                                		<div class="share-block__twitter-icon"></div>
                            		</div>
                        		</div>                           
                                <a href="#"><h3 class="camp_title">${campList[0].campName}</h3></a>
                                <p>${campList[0].campAddr.substring(0,6)}</p>
                                <div class="place_review"></div>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                     <div class="single_place">
                        <img src="${pageContext.request.contextPath}/img/seryun/${fn:split(campList[1].campFilename,',')[0]}" alt="" 
                        	style="border-radius: 6px; width: 400px; height: 300px;">

                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                            
                            	<div class="header-in-card__share-and-like">
                        			<div class="share-block">
                            			<div class="share-block__share-icon"><span></span><span></span><span></span><span></span><span></span></div>
                                		<div class="share-block__facebook-icon">
                                    		<a class="kakaotalk-sharing-btn">
					                           <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
					                                alt="카카오톡 공유 보내기 버튼" />
                              				</a>
                              			</div>                    
                                		<div class="share-block__twitter-icon"></div>
                            		</div>
                        		</div>
                                <a href="#"><h3 class="camp_title">${campList[1].campName}</h3></a>
                                <p>${campList[1].campAddr.substring(0,6)}</p>
                                <div class="place_review"></div>
                            </div>                       
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="${pageContext.request.contextPath}/img/seryun/${fn:split(campList[2].campFilename,',')[0]}" alt="" 
                        	style="border-radius: 6px; width: 400px; height: 300px;">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <div class="header-in-card__share-and-like">
                        			<div class="share-block">
                            			<div class="share-block__share-icon"><span></span><span></span><span></span><span></span><span></span></div>
                                		<div class="share-block__facebook-icon">
                                    		<a class="kakaotalk-sharing-btn">
					                           <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
					                                alt="카카오톡 공유 보내기 버튼" />
                              				</a>
                              			</div>                    
                                		<div class="share-block__twitter-icon"></div>
                            		</div>
                        		</div>
                                <a href="#"><h3 class="camp_title">${campList[2].campName}</h3></a>
                                <p>${campList[2].campAddr.substring(0,6)}</p>
                                <div class="place_review"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                   <div class="single_place">
                        <img src="${pageContext.request.contextPath}/img/seryun/${fn:split(campList[3].campFilename,',')[0]}" alt="" 
                        	style="border-radius: 6px; width: 400px; height: 300px;">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <div class="header-in-card__share-and-like">
                        			<div class="share-block">
                            			<div class="share-block__share-icon"><span></span><span></span><span></span><span></span><span></span></div>
                                		<div class="share-block__facebook-icon">
                                    		<a class="kakaotalk-sharing-btn">
					                           <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
					                                alt="카카오톡 공유 보내기 버튼" />
                              				</a>
                              			</div>                    
                                		<div class="share-block__twitter-icon"></div>
                            		</div>
                        		</div>
                                <a href="#"><h3 class="camp_title">${campList[3].campName}</h3></a>
                                <p>${campList[3].campAddr.substring(0,6)}</p>
                                <div class="place_review"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="${pageContext.request.contextPath}/img/seryun/${fn:split(campList[4].campFilename,',')[0]}" alt="" 
                        	style="border-radius: 6px; width: 400px; height: 300px;">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <div class="header-in-card__share-and-like">
                        			<div class="share-block">
                            			<div class="share-block__share-icon"><span></span><span></span><span></span><span></span><span></span></div>
                                		<div class="share-block__facebook-icon">
                                    		<a class="kakaotalk-sharing-btn">
					                           <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
					                                alt="카카오톡 공유 보내기 버튼" />
                              				</a>
                              			</div>                    
                                		<div class="share-block__twitter-icon"></div>
                            		</div>
                        		</div>
                                <a href="#"><h3 class="camp_title">${campList[4].campName}</h3></a>
                                <p>${campList[4].campAddr.substring(0,6)}</p>
                                <div class="place_review"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                     <div class="single_place">
                        <img src="${pageContext.request.contextPath}/img/seryun/${fn:split(campList[5].campFilename,',')[0]}" alt="" 
                        	style="border-radius: 6px; width: 400px; height: 300px;">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <div class="header-in-card__share-and-like">
                        			<div class="share-block">
                            			<div class="share-block__share-icon"><span></span><span></span><span></span><span></span><span></span></div>
                                		<div class="share-block__facebook-icon">
                                    		<a class="kakaotalk-sharing-btn">
					                           <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
					                                alt="카카오톡 공유 보내기 버튼" />
                              				</a>
                              			</div>                    
                                		<div class="share-block__twitter-icon"></div>
                            		</div>
                        		</div>
                                <a href="#"><h3 class="camp_title">${campList[5].campName}</h3></a>
                                <p>${campList[5].campAddr.substring(0,6)}</p>
                                <div class="place_review"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 주간 펫츠고 인기순 End-->

    <!--지도로 보는 캠핑장 kakao map API -->
    <section class="event_part section_padding" style="background-image: none;">
        <div class="container">
         <span style="color: #25483a; font-family: BMJUA; font-size: 30px;">
         <img src="${pageContext.request.contextPath}/img/camping-tent.png" alt="" style="width: 3%;"> 
         한눈에 보는 경기도 캠핑장</span>
            <div class="row">
               <div class="map_wrap" style="justify-content: center;">
                <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden; margin-top:10px;"></div>
                <div id="menu_wrap" class="bg_white">
                    <div class="option">
                        <div>
                            <form onsubmit="searchPlaces(); return false;">
                                키워드 : <input type="text" value="경기도 캠핑장" id="keyword" size="15"> 
                                <button type="submit">검색하기</button> 
                            </form>
                        </div>
                    </div>
                    <hr>
                    <ul id="placesList"></ul>
                    <div id="pagination"></div>
                </div>
            </div>
        </div>
    </div>

        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7c3557ac02cfc53e51c8d41f199888a&libraries=services"></script>
        <script>
        // 마커를 담을 배열입니다
        var markers = [];

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };  

        // 지도를 생성합니다    
        var map = new kakao.maps.Map(mapContainer, mapOption); 

        // 장소 검색 객체를 생성합니다
        var ps = new kakao.maps.services.Places();  

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({zIndex:1});

        // 키워드로 장소를 검색합니다
        searchPlaces();

        // 키워드 검색을 요청하는 함수입니다
        function searchPlaces() {

            var keyword = document.getElementById('keyword').value;

            if (!keyword.replace(/^\s+|\s+$/g, '')) {
                alert('키워드를 입력해주세요!');
                return false;
            }

            // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
            ps.keywordSearch( keyword, placesSearchCB); 
        }

        // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
            if (status === kakao.maps.services.Status.OK) {

                // 정상적으로 검색이 완료됐으면
                // 검색 목록과 마커를 표출합니다
                displayPlaces(data);

                // 페이지 번호를 표출합니다
                displayPagination(pagination);

            } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

                alert('검색 결과가 존재하지 않습니다.');
                return;

            } else if (status === kakao.maps.services.Status.ERROR) {

                alert('검색 결과 중 오류가 발생했습니다.');
                return;

            }
        }

        // 검색 결과 목록과 마커를 표출하는 함수입니다
        function displayPlaces(places) {

            var listEl = document.getElementById('placesList'), 
            menuEl = document.getElementById('menu_wrap'),
            fragment = document.createDocumentFragment(), 
            bounds = new kakao.maps.LatLngBounds(), 
            listStr = '';
            
            // 검색 결과 목록에 추가된 항목들을 제거합니다
            removeAllChildNods(listEl);

            // 지도에 표시되고 있는 마커를 제거합니다
            removeMarker();
            
            for ( var i=0; i<places.length; i++ ) {

                // 마커를 생성하고 지도에 표시합니다
                var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                    marker = addMarker(placePosition, i), 
                    itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

                // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                // LatLngBounds 객체에 좌표를 추가합니다
                bounds.extend(placePosition);

                // 마커와 검색결과 항목에 mouseover 했을때
                // 해당 장소에 인포윈도우에 장소명을 표시합니다
                // mouseout 했을 때는 인포윈도우를 닫습니다
                (function(marker, title) {
                    kakao.maps.event.addListener(marker, 'mouseover', function() {
                        displayInfowindow(marker, title);
                    });

                    kakao.maps.event.addListener(marker, 'mouseout', function() {
                        infowindow.close();
                    });

                    itemEl.onmouseover =  function () {
                        displayInfowindow(marker, title);
                    };

                    itemEl.onmouseout =  function () {
                        infowindow.close();
                    };
                })(marker, places[i].place_name);

                fragment.appendChild(itemEl);
            }

            // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
            listEl.appendChild(fragment);
            menuEl.scrollTop = 0;

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);
        }

        // 검색결과 항목을 Element로 반환하는 함수입니다
        function getListItem(index, places) {

            var el = document.createElement('li'),
            itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                        '<div class="info">' +
                        '   <h5>' + places.place_name + '</h5>';

            if (places.road_address_name) {
                itemStr += '    <span>' + places.road_address_name + '</span>' +
                            '   <span class="jibun gray">' +  places.address_name  + '</span>';
            } else {
                itemStr += '    <span>' +  places.address_name  + '</span>'; 
            }
                         
              itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                        '</div>';           

            el.innerHTML = itemStr;
            el.className = 'item';

            return el;
        }

        // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
        function addMarker(position, idx, title) {
            var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                imgOptions =  {
                    spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                    spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                    offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                },
                markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                    marker = new kakao.maps.Marker({
                    position: position, // 마커의 위치
                    image: markerImage 
                });

            marker.setMap(map); // 지도 위에 마커를 표출합니다
            markers.push(marker);  // 배열에 생성된 마커를 추가합니다

            return marker;
        }

        // 지도 위에 표시되고 있는 마커를 모두 제거합니다
        function removeMarker() {
            for ( var i = 0; i < markers.length; i++ ) {
                markers[i].setMap(null);
            }   
            markers = [];
        }

        // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
        function displayPagination(pagination) {
            var paginationEl = document.getElementById('pagination'),
                fragment = document.createDocumentFragment(),
                i; 

            // 기존에 추가된 페이지번호를 삭제합니다
            while (paginationEl.hasChildNodes()) {
                paginationEl.removeChild (paginationEl.lastChild);
            }

            for (i=1; i<=pagination.last; i++) {
                var el = document.createElement('a');
                el.href = "#";
                el.innerHTML = i;

                if (i===pagination.current) {
                    el.className = 'on';
                } else {
                    el.onclick = (function(i) {
                        return function() {
                            pagination.gotoPage(i);
                        }
                    })(i);
                }

                fragment.appendChild(el);
            }
            paginationEl.appendChild(fragment);
        }

        // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
        // 인포윈도우에 장소명을 표시합니다
        function displayInfowindow(marker, title) {
            var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

            infowindow.setContent(content);
            infowindow.open(map, marker);
        }

         // 검색결과 목록의 자식 Element를 제거하는 함수입니다
        function removeAllChildNods(el) {   
            while (el.hasChildNodes()) {
                el.removeChild (el.lastChild);
            }
        }
        </script>
            </section>
    <!--지도로 보는 캠핑장 end-->

  
    <!--커뮤니티-->
    <section class="client_review section_padding">
        <div class="container">
            <div class="row ">
                <div class="col-xl-6">
                    <div class="section_tittle">
                         <span style="color: #ffecdc; font-family: BMJUA; font-size: 30px;">
                         커뮤니티 금주 인기 콘텐츠
                         <img src="${pageContext.request.contextPath}/img/icon-live.png" alt="" style="width:;"> 
                         </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                  <div class="client_review_slider owl-carousel">
                  	 <!-- 커뮤니티 게시글01-->
                  	 		
                              <div class="card">
                                <div class="card__header">
                                  <div class="header-in-card">
                                    <div class="header-in-card__share-and-like">
                                      
                                      <div class="like-block">
                                        <!-- <div class="like-block__like-icon"></div> -->
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="card__body">                                               
                                 <br>
                                  <div class="card-tags" >
                                    <a href="javascript:void(0)"  class="card-tags__item"
                                    	onclick="javascript:window.open('${pageContext.request.contextPath}/community/read/${communityBoardList[0].boardNo}',
                                    			'mainCommunityPop','width=800,height=400,left=200,top=100')">
                                    	${communityBoardList[0].boardTag }</a>
                                </div>
                                </div><img src="${pageContext.request.contextPath}/img/samjin/${fn:split(communityBoardList[0].boardFileName,',')[0]}" 
                                			alt="" class="card__image">
                              </div>
                             
                            <!-- 커뮤니티 게시글01 End -->
                            <!-- 커뮤니티 게시글02-->
                              <div class="card">
                                <div class="card__header">
                                  <div class="header-in-card">
                                    <div class="header-in-card__share-and-like">
                                      
                                      <div class="like-block">
                                        <!-- <div class="like-block__like-icon"></div> -->
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="card__body">
                                 <br>
                                  <div class="card-tags">
                                    <a href="javascript:void(0)" class="card-tags__item"
                                    onclick="javascript:window.open('${pageContext.request.contextPath}/community/read/${communityBoardList[1].boardNo}',
                                    			'mainCommunityPop','width=800,height=400,left=200,top=100')">
                                    ${communityBoardList[1].boardTag }</a>
                                </div>
                                </div><img src="${pageContext.request.contextPath}/img/samjin/${fn:split(communityBoardList[1].boardFileName,',')[0]}" alt="" class="card__image">
                              </div>
                            <!-- 커뮤니티 게시글02 End -->
                            <!-- 커뮤니티 게시글03-->
                              <div class="card">
                                <div class="card__header">
                                  <div class="header-in-card">
                                    <div class="header-in-card__share-and-like">
                                      
                                      <div class="like-block">
                                        <!-- <div class="like-block__like-icon"></div> -->
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="card__body">
                                 <br>
                                  <div class="card-tags">
                                    <a href="javascript:void(0)" class="card-tags__item"
                                    onclick="javascript:window.open('${pageContext.request.contextPath}/community/read/${communityBoardList[2].boardNo}',
                                    			'mainCommunityPop','width=800,height=400,left=200,top=100')">
                                    ${communityBoardList[2].boardTag }</a>
                                </div>
                                </div><img src="${pageContext.request.contextPath}/img/samjin/${fn:split(communityBoardList[2].boardFileName,',')[0]}" alt="" class="card__image">
                              </div>
                            <!-- 커뮤니티 게시글03 End -->
                            <!-- 커뮤니티 게시글04-->
                              <div class="card">
                                <div class="card__header">
                                  <div class="header-in-card">
                                    <div class="header-in-card__share-and-like">
                                      
                                      <div class="like-block">
                                        <!-- <div class="like-block__like-icon"></div> -->
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="card__body">
                                 <br>
                                  <div class="card-tags">
                                    <a href="javascript:void(0)" class="card-tags__item"
                                    onclick="javascript:window.open('${pageContext.request.contextPath}/community/read/${communityBoardList[3].boardNo}',
                                    			'mainCommunityPop','width=800,height=400,left=200,top=100')">
                                    ${communityBoardList[3].boardTag }</a>
                                </div>
                                </div><img src="${pageContext.request.contextPath}/img/samjin/${fn:split(communityBoardList[3].boardFileName,',')[0]}" alt="" class="card__image">
                              </div>
                            <!-- 커뮤니티 게시글04 End -->
                    		<!-- 커뮤니티 게시글05-->
                              <div class="card">
                                <div class="card__header">
                                  <div class="header-in-card">
                                    <div class="header-in-card__share-and-like">
                                      
                                      <div class="like-block">
                                        <!-- <div class="like-block__like-icon"></div> -->
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="card__body">
                                 <br>
                                  <div class="card-tags">
                                    <a href="javascript:void(0)" class="card-tags__item"
                                    onclick="javascript:window.open('${pageContext.request.contextPath}/community/read/${communityBoardList[4].boardNo}',
                                    			'mainCommunityPop','width=800,height=400,left=200,top=100')">
                                    ${communityBoardList[4].boardTag }</a>
                                </div>
                                </div><img src="${pageContext.request.contextPath}/img/samjin/${fn:split(communityBoardList[4].boardFileName,',')[0]}" alt="" class="card__image">
                              </div>
                            <!-- 커뮤니티 게시글05 End -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--커뮤니티 end-->

    <!--광고 배너 영역-->
    <section class="best_services section_padding">
        <div class="container">
             <span style="color: #25483a; font-family: BMJUA; font-size: 28px;">꼼꼼한 여행 준비를 위한 펫츠고 추천!</span>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"><img src="${pageContext.request.contextPath}/img/services_1.png" alt="반려견보험" style="border-radius: 6px;"></a>
                    반려견보험
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"><img src="${pageContext.request.contextPath}/img/services_2.png" alt="운전자보험" style="border-radius: 6px;"></a>
                    운전자보험
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"><img src="${pageContext.request.contextPath}/img/services_3.png" alt="배상보험" style="border-radius: 6px;"></a>
                    배상보험
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                       <a href="#"><img src="${pageContext.request.contextPath}/img/services_4.png" alt="캠핑장비추천" style="border-radius: 6px;"></a>
                       캠핑장비추천
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--광고영역배너 End -->
    

<!-- 카카오톡 공유하기 -->
<!-- <script>
  Kakao.Share.createDefaultButton({
    container: '#kakaotalk-sharing-btn01',
    objectType: 'text',
    text:
      '기본 템플릿으로 제공되는 텍스트 템플릿은 텍스트를 최대 200자까지 표시할 수 있습니다. 텍스트 템플릿은 텍스트 영역과 하나의 기본 버튼을 가집니다. 임의의 버튼을 설정할 수도 있습니다. 여러 장의 이미지, 프로필 정보 등 보다 확장된 형태의 카카오톡 공유는 다른 템플릿을 이용해 보낼 수 있습니다.',
    link: {
      // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
      mobileWebUrl: 'https://localhost:9000',
      webUrl: 'https://localhost:9000',
    },
  });
  Kakao.Share.createDefaultButton({
      container: '#kakaotalk-sharing-btn02',
      objectType: 'text',
      text:
        '기본 템플릿으로 제공되는 텍스트 템플릿은 텍스트를 최대 200자까지 표시할 수 있습니다. 텍스트 템플릿은 텍스트 영역과 하나의 기본 버튼을 가집니다. 임의의 버튼을 설정할 수도 있습니다. 여러 장의 이미지, 프로필 정보 등 보다 확장된 형태의 카카오톡 공유는 다른 템플릿을 이용해 보낼 수 있습니다.',
      link: {
        // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
        mobileWebUrl: 'https://localhost:9000',
        webUrl: 'https://localhost:9000',
      },
    });
 
 Kakao.Share.createDefaultButton({
      container: '#kakaotalk-sharing-btn03',
      objectType: 'text',
      text:
        '기본 템플릿으로 제공되는 텍스트 템플릿은 텍스트를 최대 200자까지 표시할 수 있습니다. 텍스트 템플릿은 텍스트 영역과 하나의 기본 버튼을 가집니다. 임의의 버튼을 설정할 수도 있습니다. 여러 장의 이미지, 프로필 정보 등 보다 확장된 형태의 카카오톡 공유는 다른 템플릿을 이용해 보낼 수 있습니다.',
      link: {
        // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
        mobileWebUrl: 'https://localhost:9000',
        webUrl: 'https://localhost:9000',
      },
    });
 
 Kakao.Share.createDefaultButton({
      container: '#kakaotalk-sharing-btn04',
      objectType: 'text',
      text:
        '기본 템플릿으로 제공되는 텍스트 템플릿은 텍스트를 최대 200자까지 표시할 수 있습니다. 텍스트 템플릿은 텍스트 영역과 하나의 기본 버튼을 가집니다. 임의의 버튼을 설정할 수도 있습니다. 여러 장의 이미지, 프로필 정보 등 보다 확장된 형태의 카카오톡 공유는 다른 템플릿을 이용해 보낼 수 있습니다.',
      link: {
        // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
        mobileWebUrl: 'https://localhost:9000',
        webUrl: 'https://localhost:9000',
      },
    });
 
 Kakao.Share.createDefaultButton({
      container: '#kakaotalk-sharing-btn05',
      objectType: 'text',
      text:
        '기본 템플릿으로 제공되는 텍스트 템플릿은 텍스트를 최대 200자까지 표시할 수 있습니다. 텍스트 템플릿은 텍스트 영역과 하나의 기본 버튼을 가집니다. 임의의 버튼을 설정할 수도 있습니다. 여러 장의 이미지, 프로필 정보 등 보다 확장된 형태의 카카오톡 공유는 다른 템플릿을 이용해 보낼 수 있습니다.',
      link: {
        // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
        mobileWebUrl: 'https://localhost:9000',
        webUrl: 'https://localhost:9000',
      },
    });
 
 Kakao.Share.createDefaultButton({
     container: '#kakaotalk-sharing-btn06',
     objectType: 'text',
     text:
       '기본 템플릿으로 제공되는 텍스트 템플릿은 텍스트를 최대 200자까지 표시할 수 있습니다. 텍스트 템플릿은 텍스트 영역과 하나의 기본 버튼을 가집니다. 임의의 버튼을 설정할 수도 있습니다. 여러 장의 이미지, 프로필 정보 등 보다 확장된 형태의 카카오톡 공유는 다른 템플릿을 이용해 보낼 수 있습니다.',
     link: {
       // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
       mobileWebUrl: 'https://localhost:9000',
       webUrl: 'https://localhost:9000',
     },
   });
  
</script> -->

    <!-- jquery plugins here-->
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="${pageContext.request.contextPath}/js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/gijgo.min.js"></script>
    <!-- custom js -->
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    
  
<!-- partial -->
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js'></script>
<script  src="${pageContext.request.contextPath}/js/comu_script.js"></script>

<!-- Kakao API -->
	  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	  <script>
	  Kakao.init('646a0d07558214ebe7ff129447bc2ed2'); //발급 받았던 javascript key를 여기에 넣는다.
		 
	  $("a[class=kakaotalk-sharing-btn]").click(function(e) { //jquery를 사용한다 가정
	 		//alert("카카오!");
			e.preventDefault();   //이벤트 버블링 prevent

			Kakao.Link.sendCustom({
			templateId: 87239   //확인하였던 이벤트번호 등록 
			});
		});
	  </script>

</body>
</html>
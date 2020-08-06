//초기맵
function initMap() {
 	// lat위도   lng경도
	var kglat = 37.571058;
 	var kglng = 126.992378;

	var kglocation = {lat: kglat,  lng: kglng}; //kg아이티뱅크

	//zoom커지면 확대, 15~18이 적당
	var map = new google.maps.Map(document.getElementById('map_canvas'), {zoom: 18, center: kglocation});
	
	var contentString = '<div id="content">'+ 
							'<div id="siteNotice">'+
								'종로구'+
							'</div>'+
							'<h1 id="firstHeading" class="firstHeading">KG아이티뱅크</h1>'+
						  	'<div id="bodyContent">'+'<p>학원입니다.</p>' +'</div>'+
						'</div>';
	
	//마커 이미지 주소
	var imageaddress = 'https://i.imgur.com/Cm6tqUL.png' 
	//마커 이미지 설정
	var markerIcon = new google.maps.MarkerImage(imageaddress,null,null,null,new google.maps.Size(40,52));
	//마커 클릭시 나오는 창 상세정보창
	var infowindow = new google.maps.InfoWindow({content: contentString});
	//마커 표시
	var marker = new google.maps.Marker({position: kglocation, map: map, icon: markerIcon});
	//맵에서 마커 클릭시 상세정보창을 나오게하는 이벤트 추가
	marker.addListener('click', function() {infowindow.open(map, marker);});
}
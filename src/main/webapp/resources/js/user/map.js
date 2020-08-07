//초기맵


function initMap() {
	window.navigator.geolocation.getCurrentPosition(current_position);
}
function current_position(position){
	/*
	// lat위도   lng경도
	var kglat = document.getElementById("lat").value;
 	var kglng = document.getElementById("lng").value;
 	var kgname = document.getElementById("store_name").value;
	var location = {lat: Number(kglat), lng: Number(kglng)} //kg아이티뱅크
	var map = new google.maps.Map(document.getElementById('map_canvas'), {zoom: 18, center: location});

	var contentString = '<div id="content">'+ 
							'<div id="siteNotice" style="font-size:20px">'+
								'<strong>'+'중구'+'</strong>' +
							'</div>'+
							'<h1 id="firstHeading" class="firstHeading">' + kgname +'</h1>'+
						  	'<div id="bodyContent">'+'<a href=#>상세보기</a>' +'</div>'+
						'</div>';
	//마커 이미지 주소
	var imageaddress = 'https://i.imgur.com/Cm6tqUL.png';
	//마커 이미지 설정
	var markerIcon = new google.maps.MarkerImage(imageaddress,null,null,null,new google.maps.Size(40,52));
	//마커 클릭시 나오는 창 상세정보창
	var infowindow = new google.maps.InfoWindow({content: contentString});
	//마커 표시
	var marker = new google.maps.Marker({position: location, map: map, icon: markerIcon});
	//맵에서 마커 클릭시 상세정보창을 나오게하는 이벤트 추가
	marker.addListener('click', function() {infowindow.open(map, marker);});
	*/
	
	var msg;
	msg = "위도 : " + position.coords.latitude.toFixed(6) + ", 경도 : " + position.coords.longitude.toFixed(6);
	var userLat = position.coords.latitude.toFixed(6);
	var userLng = position.coords.longitude.toFixed(6);
	var location = {lat: Number(userLat),  lng: Number(userLng)};

	//zoom커지면 확대, 15~18이 적당
	var map = new google.maps.Map(document.getElementById('map_canvas'), {zoom: 18, center: location});

	var contentString = '<div id="content">'+ 
							'<div id="siteNotice" style="font-size:20px">'+
								'<strong>'+'내 위치'+'</strong>' +
							'</div>'+
							'<h1 id="firstHeading" class="firstHeading">' + '내 위치' +'</h1>'+
						  	'<div id="bodyContent">'+'<a href=#>'+ msg +'</a>' +'</div>'+
						'</div>';
	
	//마커 이미지 주소
	var imageaddress = 'https://i.imgur.com/A6WeDcB.png';
	//마커 이미지 설정
	var markerIcon = new google.maps.MarkerImage(imageaddress,null,null,null,new google.maps.Size(30,46));
	//마커 클릭시 나오는 창 상세정보창
	var infowindow = new google.maps.InfoWindow({content: contentString});
	//마커 표시
	var marker = new google.maps.Marker({position: location, map: map, icon: markerIcon});
	//맵에서 마커 클릭시 상세정보창을 나오게하는 이벤트 추가
	marker.addListener('click', function() {infowindow.open(map, marker);});

}
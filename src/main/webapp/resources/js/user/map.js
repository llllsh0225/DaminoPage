//초기맵
function initMap() {
	navigator.geolocation.getCurrentPosition(current_position);// 위치 권한
	
	var geocoder = new google.maps.Geocoder();
	document.getElementById("name_submit").addEventListener("click", () => {
		if(document.getElementById("storeName").value != ""){
	    	document.searchForm1.submit();
	    	geocodeAddress(geocoder, map);
    	}else{
    		alert('매장명을 입력해주세요.');
    	}
		
    });//매장명 검색
	
    document.getElementById("location_submit").addEventListener("click", () => {
    	if(document.getElementById("storeRegion").value != "none"){
	    	document.searchForm.submit();
	    	geocodeAddress2(geocoder, map);
    	}else{
    		alert('구/군을 선택해주세요.');
    	}
    });//지역 검색
}
//검색결과맵
function searchMap(){
	var location = {lat: 37.504357,  lng: 127.087044}// 현위치
	var map = new google.maps.Map(document.getElementById("map_canvas"), {zoom: 14, center: location});
	
	var geocoder = new google.maps.Geocoder();
	geocodeAddress2(geocoder, map);
	
	document.getElementById("name_submit").addEventListener("click", () => {
		if(document.getElementById("storeName").value != ""){
	    	document.searchForm1.submit();
	    	geocodeAddress(geocoder, map);
    	}else{
    		alert('매장명을 입력해주세요.');
    	}
		
    });//매장명 검색
	
    document.getElementById("location_submit").addEventListener("click", () => {
    	if(document.getElementById("storeRegion").value != "none"){
	    	document.searchForm.submit();
	    	geocodeAddress2(geocoder, map);
    	}else{
    		alert('구/군을 선택해주세요.');
    	}
    });//지역 검색
}

//현재 위치
function current_position(position){
	var msg;
	msg = "위도 : " + position.coords.latitude.toFixed(6) + ", 경도 : " + position.coords.longitude.toFixed(6);
//	alert(msg);
	var userLat = position.coords.latitude.toFixed(6);// 현 위치의 위도 소수점 6자리
	var userLng = position.coords.longitude.toFixed(6);// 현 위치의 경도 소수점 6자리
	var location = {lat: Number(userLat),  lng: Number(userLng)}// 현위치
	// 지도에 현위치 표시
	var map = new google.maps.Map(document.getElementById("map_canvas"), {zoom: 16, center: location});
    
    var contentString = '<div id="content">'+ 
						    '<div id="siteNotice" style="font-size:20px">'+
						        '<strong>'+'내위치'+'</strong>' +
						    '</div>'+
						    '<h1 id="firstHeading" class="firstHeading">' + msg +'</h1>'+
						      '<div id="bodyContent">'+ ' ' +'</div>'+
						'</div>';
    // 마커 이미지 주소
    var imageaddress = 'https://i.imgur.com/A6WeDcB.png';
    // 마커 이미지 설정
    var markerIcon = new google.maps.MarkerImage(imageaddress,null,null,null,new google.maps.Size(30,46));
    // 마커 클릭시 나오는 창 상세정보창
    var infowindow = new google.maps.InfoWindow({content: contentString});
    // 마커 표시
    var marker = new google.maps.Marker({position: location, map: map, icon: markerIcon});
    // 맵에서 마커 클릭시 상세정보창을 나오게하는 이벤트 추가
    marker.addListener('click', function() {infowindow.open(map, marker);});

    
}

function geocodeAddress(geocoder, resultsMap) {
    var storeName = document.getElementById("storeName").value;
    
    geocoder.geocode(
      {
    	  address: storeName
      },
      (results, status) => {
        if (status === "OK") {
          resultsMap.setCenter(results[0].geometry.location);
          // 마커 이미지 주소
          var imageaddress2 = "https://i.imgur.com/Cm6tqUL.png";
          // 마커 이미지 설정
          var markerIcon2 = new google.maps.MarkerImage(imageaddress2,null,null,null,new google.maps.Size(40,52));
          // 마커 클릭시 나오는 창 상세정보창
          var contentString2 = '<div id="content">'+ 
							    '<div id="siteNotice" style="font-size:20px">'+
							        '<strong>'+'${storeRegion}'+'</strong>' +
							    '</div>'+
							    '<h1 id="firstHeading" class="firstHeading">' + '${storeName}' +'</h1>'+
							      '<div id="bodyContent">'+' ' +'</div>'+
						      '</div>';
          var infowindow2 = new google.maps.InfoWindow({content: contentString2});
        
          var marker2 = new google.maps.Marker({
            map: resultsMap,
            position: results[0].geometry.location,
            icon: markerIcon2
          });
          
          marker2.addListener('click', function() {infowindow2.open(resultsMap, marker2);});
          
        } else {
        	
        }
        
      }
    );
  } 

// 지역검색
function geocodeAddress2(geocoder, resultsMap) {
	
	var addressList = document.getElementsByTagName("dd");
	var storenameList = document.getElementsByTagName("dt");
	
	for(var i=0; i<addressList.length-1; i++){
	
	    var address = addressList[i].id;
	    var storename = storenameList[i].id;
	   
	    geocoder.geocode(
	      {
	    	  address: address
	      },
	      (results, status) => {
	        if (status === "OK") {
	          resultsMap.setCenter(results[0].geometry.location);
	          // 마커 이미지 주소
	          var imageaddress = "https://i.imgur.com/Cm6tqUL.png";
	          // 마커 이미지 설정
	          var markerIcon = new google.maps.MarkerImage(imageaddress,null,null,null,new google.maps.Size(40,52));
	         
	          var marker = new google.maps.Marker({
	            map: resultsMap,
	            position: results[0].geometry.location,
	            icon: markerIcon
	          });
	        } else {
	          alert(
	            "매장명을 확인해주세요."
	          );
	        }
	        var contentString = '<div id="content">'+ 
								    '<div id="siteNotice" style="font-size:20px">'+
							        '<strong>'+ '다미노피자' + '</strong>' +
							    '</div>'+'<br>' + 
							    '<h1 id="firstHeading" class="firstHeading">' + '주소  : ' + results[0].formatted_address +  '</h1>'+
							      	'<div id="bodyContent">'+'위도 : ' + results[0].geometry.location.lat().toFixed(6) + ', 경도 : ' + results[0].geometry.location.lng().toFixed(6)  +'</div>'+
						        '</div>';
	        // 마커 클릭시 나오는 창 상세정보창
			var infowindow = new google.maps.InfoWindow({content: contentString});
			marker.addListener('click', function() {infowindow.open(resultsMap, marker);});
	      }
	    );
	}
  } 

function addressList(){
	var lis=document.getElementsByTagName("dd");
	for(var i=0; i<lis.length; i++){
		console.log(lis[i].id);
		alert(lis[i].id);
	}
}
/*
 * 
 */
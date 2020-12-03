function map(){
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
      center: new kakao.maps.LatLng(35.8542878,128.5479678), // 지도의 중심좌표
      level: 7 // 지도의 확대 레벨
  }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//커스텀 오버레이에 표시할 내용입니다     
//HTML 문자열 또는 Dom Element 입니다 
var position = [
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">서문시장</span><span class="right"></span></div>',
		latlng: new kakao.maps.LatLng(35.8689332,128.5796777)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">이월드</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.8533301,128.5660228)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">두류공원</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.8474563,128.5555623)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">강정보</span><span class="right"></span></div>', 
		latlng: new kakao.maps.LatLng(35.8432233,128.4583343)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">앞산</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.820939, 128.579000)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">김광석거리</span><span class="right"></span></div>', 
		latlng: new kakao.maps.LatLng(35.859936, 128.606596)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">달성공원</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.874256, 128.578078)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">대구근대역사관</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.871814, 128.591171)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">곱창골목</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.838099, 128.575740)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">월광수변공원</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.799515, 128.548475)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">대구수목원</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.799129, 128.523655)
	},
	{
		content : '<div class ="kakaolabel"><span class="left"></span><span class="center">수성못</span><span class="right"></span></div>',  
		latlng: new kakao.maps.LatLng(35.828505, 128.617679)
	}
];

//커스텀 오버레이를 생성합니다
//for (var i = 0; i < positions.length; i++) {
	var customOverlay = [
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[0].latlng,
				content : position[0].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[1].latlng,
				content : position[1].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[2].latlng,
				content : position[2].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[3].latlng,
				content : position[3].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[4].latlng,
				content : position[4].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[5].latlng,
				content : position[5].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[6].latlng,
				content : position[6].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[7].latlng,
				content : position[7].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[8].latlng,
				content : position[8].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[9].latlng,
				content : position[9].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[10].latlng,
				content : position[10].content
			})
		},
		{
			overlay : new kakao.maps.CustomOverlay({
		    	position : position[11].latlng,
				content : position[11].content
			})
		}
	]; 
	for (var i = 0; i < customOverlay.length; i++) {
    	var openOverlay = customOverlay[i].overlay;
    	openOverlay.setMap(map);
	}
    
	
	var iwContent = '<div style="padding:5px; text-aling:center;"><b>KG Hotel</b></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	iwPosition = new kakao.maps.LatLng(35.8542905, 128.5478127), //인포윈도우 표시 위치입니다
	iwRemoveable = false; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성하고 지도에 표시합니다
	var infowindow = new kakao.maps.InfoWindow({
		map : map, // 인포윈도우가 표시될 지도
		position : iwPosition,
		content : iwContent,
		removable : iwRemoveable
	});
}
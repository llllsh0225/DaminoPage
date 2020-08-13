<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="title" content="다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">

<script type="text/javascript"
	src="<c:url value='/resources/js/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/ui.js'/>"></script>
	
<script type="text/javascript">

$(document).ready(function(){
	$('.btn-close').click(function(){ // 제품 상세보기 pop-layer 숨기기
		$('.pop-layer').hide();
	});
});

</script>
<script>
//토핑 가져오기
var addToppingCheck = function() {
	
	//$(".total-topping").html("<div>추가 토핑<div>");
	
	if($(':radio[name="size"]:checked').val() == "M"){
		$(".doubleCheeseDough").text("+3,000원");
	}else {
		$(".doubleCheeseDough").text("+5,000원");
	}
	
	var rpzCode = getRpzCode();
	if (rpzCode == "E") {
		alert("처리에 오류가 발생하였습니다.\n고객센터(080-860-3082)에 문의해 주세요");
		return;
	}
	
	addTopping();
};

// 토핑 가져오기
var addTopping = function() {
	
	var rpzCode = getRpzCode();
	if (rpzCode == "E") {
		alert("처리에 오류가 발생하였습니다.\n고객센터(080-860-3082)에 문의해 주세요");
		return;
	}
	setTotalAmt();

	$.ajax({
		type: "GET",
		url: "/goods/allToppingLayer",
		data: { 'code_01': rpzCode },
		success:function(data) {
			$("#allToppingLayer").html(data)
			
			$('.js_tab ul.topping li').removeClass('active');
			$('.js_tab ul.topping li:first-child').addClass('active');
			
		},
		error: function (error){
			alert("다시 시도해주세요.");
		}
	});
};

var setTotalAmt = function() {
	var price = 0;
	var doughPrice = 0;
	var doughInfo = "";
	var rpzCode = getRpzCode();
	if (rpzCode == "E") {
		alert("처리에 오류가 발생하였습니다.\n고객센터(080-860-3082)에 문의해 주세요");
		return;
	}
	
	var strDough = $(':radio[name="dough"]:checked').val();
	
	if($(':radio[name="size"]:checked').val() == "L") {
		if (strDough == "203"){
			doughPrice = 2000;
			doughInfo = "슈퍼시드 함유 도우";
		} else if (strDough == "777") {
			doughPrice = 5000;
			doughInfo = "더블 치즈엣지";
		} else if (strDough == "104") {
			doughInfo = "오리지널 도우";
		} else if (strDough == "115") {
			doughInfo = "나폴리 도우";
		} else if (strDough == "103") {
			doughInfo = "씬 도우";
		} else if (strDough == "102"){
			doughInfo = "더블 크러스트";
		} else if (strDough == "116"){
			doughInfo = "샌드";
		}
		price = parseInt("35900");
		price += doughPrice;
	}else {
		if (strDough == "203"){
			doughPrice = 2000;
			doughInfo = "슈퍼시드 함유 도우";
		} else if (strDough == "777") {
			doughPrice = 3000;
			doughInfo = "더블 치즈엣지";
		} else if (strDough == "104") {
			doughInfo = "오리지널 도우";
		} else if (strDough == "115") {
			doughInfo = "나폴리 도우";
		} else if (strDough == "103") {
			doughInfo = "씬 도우";
		} else if (strDough == "102"){
			doughInfo = "더블 크러스트";
		} else if (strDough == "116"){
			doughInfo = "샌드";
		}
		price = parseInt("29000");
		price += doughPrice;
	}
	
	var pizzaAmt = price * parseInt($("#qty").val());
	
	$(".total-pizza").text("치즈케이크 블랙타이거" + "("+ price +")" + "x" + (parseInt($("#qty").val())).cvtNumber());
	
	if(doughPrice > 0 ){
		$(".total-dough").html("<div>도우/사이즈 : "+ doughInfo+"(+"+doughPrice.cvtNumber()+"원)/"+$(':radio[name="size"]:checked').val()+"<input type='hidden' class='priceOriginal' value='"+price.cvtNumber()+"'></input>"+"</div>");
	}else {
		$(".total-dough").html("<div>도우/사이즈 : "+ doughInfo+"/"+$(':radio[name="size"]:checked').val()+"<input type='hidden' class='priceOriginal' value='"+price.cvtNumber()+"'></input>"+"</div>");
	}
	
	$(".total-count").text((parseInt($("#qty").val())).cvtNumber());
	$(".total-price_sum").text((pizzaAmt).cvtNumber() + "원");
	
	sum();
};

var sideValidate = function() {
	
	var rpzCode = getRpzCode();
	var sideList = getSideCode();
	var etcList = getEtcCode();
	
	$.ajax({
		type: "GET",
		url: "/goods/validate",
		data: { 
				'gubun': "PIZZA",
				'goods_code': rpzCode+":"+$("#qty").val(),
				'side_code': sideList,
				'etc_code' : etcList
		},
		success:function(data) {
			if(data.resultData.result == "success") {
				saveBasket();
			} else if (data.resultData.result == "drinkover") {
				alert("음료는 피자 1판당 2개 까지 주문 가능합니다. 장바구니를 확인 해주세요.");
				return;
			} else if (data.resultData.result == "sidevanover") {
				alert("사이드 특가는 피자 1판당 1개 까지 주문 가능합니다. 장바구니를 확인 해주세요.");
				return;
			} else if (data.resultData.result == "temp_goods_over"){
				alert("해당제품은 9개까지 주문 가능합니다.");
				return;
			}
		},
		error: function (error){
			alert("다시 시도해주세요.");
		}
	});
};

var saveBasket = function(returnUrl) {
	
	var rpzCode = getRpzCode();
	var toppingList = getToppingCode();
	var sideList = getSideCode();
	var etcList = getEtcCode();
	
	if (rpzCode == "E") {
		alert("처리에 오류가 발생하였습니다.\n고객센터(080-860-3082)에 문의해 주세요");
		return;
	}

	//var returnUrl = "/goods/detail?dsp_ctgr=C0101&code_01=RPZ177AL";
	var returnUrl = "/basket/detail";
	
	var menuCode = "M010101";
	
	$.ajax({
    	type: "POST",
    	url: "/goods/pauseCheck",
    	data: {
    		'goods_code': rpzCode,
    		'topping': toppingList,
    		'side': sideList,
    		'etc_drink': etcList
    	},
    	success:function(data) {
    		if(data.resultData.result == "success") {
    			
    			addBasketListAll("addPZ", rpzCode, $("#qty").val(), toppingList, "", addBasketComplete, returnUrl, menuCode, "RPZ", sideList, etcList);
    			
    		} else {
    			alert(data.resultData.result);
    			return;
    		}
    	},
    	error: function (error){
    		alert("다시 시도해주세요.");
    	},
    	beforeSend: function() {
    		checkSttsFlag = "Y";
        },
        complete: function() {
        	checkSttsFlag = null;
        }
    });
};

//피자 코드 만들기
var getRpzCode = function() {
	
	var rpzCode = "RPZ177AL";
	
	rpzCode = rpzCode.substring(0, 6);
	
	if(rpzCode == "RPZ161"){
		$(".chk-box.dough1").removeClass("selected");
		$("#dough1").prop("checked", false);
		
		$(".chk-box.dough2").removeClass("selected");
		$("#dough2").prop("checked", false);
		
		$(".chk-box.dough3").removeClass("selected");
		$("#dough3").prop("checked", false);
		
		$(".chk-box.dough4").removeClass("selected");
		$("#dough4").prop("checked", false);
		
		$(".chk-box.dough5").removeClass("selected");
		$("#dough5").prop("checked", false);
		
		$(".chk-box.dough7").removeClass("selected");
		$("#dough7").prop("checked", false);
		
		$(".chk-box.dough6").addClass("selected");
		$("#dough6").prop("checked", true);
		
	} else if (rpzCode == "RPZ177") {
		
		$(".chk-box.dough1").removeClass("selected");
		$("#dough1").prop("checked", false);
		
		$(".chk-box.dough2").removeClass("selected");
		$("#dough2").prop("checked", false);
		
		$(".chk-box.dough3").removeClass("selected");
		$("#dough3").prop("checked", false);
		
		$(".chk-box.dough4").removeClass("selected");
		$("#dough4").prop("checked", false);
		
		$(".chk-box.dough5").removeClass("selected");
		$("#dough5").prop("checked", false);
		
		$(".chk-box.dough6").removeClass("selected");
		$("#dough6").prop("checked", false);
		
		$(".chk-box.dough7").addClass("selected");
		$("#dough7").prop("checked", true);
	}

	var strDough = $(':radio[name="dough"]:checked').val();

	if (strDough == "104") {
		strDough = "S";
	} else if (strDough == "115") {
		strDough = "N";
	} else if (strDough == "103") {
		strDough = "H";
	} else if (strDough == "203") {
		strDough = "G";
	} else if (strDough == "102") {
		strDough = "D";
	} else if (strDough == "116") {
		strDough = "A";
	} else if (strDough == "777") {
		var goUrl = "";
		var doubleCheese = goUrl.substring(37,44);
		
		return doubleCheese + $(':radio[name="size"]:checked').val();
	} else {
		return "E";
	}
	rpzCode += (strDough + $(':radio[name="size"]:checked').val());
	
	return rpzCode;
};



function sum() {
	var sideSum = 0;
	var etcSum = 0;
	var toppingSum = 0;
	var sideCnt = 0;
	var etcCnt = 0;
	var toppingCnt = 0;
	var goodsSum = 0;
	var goodsCnt = 0;
	var pizzaSum = 0;
	var etcDrink = 0;
	var sideVan = 0;
	
	var test = 0;
	$(".toppingSum").each(function() {
		toppingSum += parseInt($(this).val());
	});
	$(".toppingCnt").each(function() {
		toppingCnt += parseInt($(this).text());
	});
	
	$(".sideSum").each(function() {
		sideSum += parseInt($(this).val());
	});
	
	$(".sideCnt").each(function() {
		sideCnt += parseInt($(this).text());
	});
	$(".sideVan").each(function() {
		sideVan += parseInt($(this).val());
	});
	
	$(".etcSum").each(function() {
		etcSum += parseInt($(this).val());
	});
	$(".etcCnt").each(function() {
		etcCnt += parseInt($(this).text());
	});
	$(".etcDrink").each(function() {
		etcDrink += parseInt($(this).val());
	});
	
	var toppingChild =  $(".total-topping").children('div').length;
	var sideChild =  $(".total-side").children('p').length;
	var etcChild =  $(".total-etc").children('p').length;
	
	if(toppingChild >= 2 || sideChild > 2 || etcChild > 2) {
		if(toppingChild == 1) {
			$(".total-topping").html("<div></div>")
		}
		$('.btn-text-more').css('display','block');
	}else {
		if(toppingChild == 1) {
			$(".total-topping").html("<div></div>")
		}
		$('.btn-text-more').css('display','none');
	}
	
	var pizzaAmount = $(".priceOriginal").val().replace(',','');
	
	if(parseInt($("#qty").val())*2 < etcDrink && parseInt($("#qty").val()) < sideVan) {
		var result = confirm("피자 수량을 줄이면 사이드, 음료가 초기화 됩니다.");
		if(result){
			$(".etcdelete").find("input[type=number]").val(0);
			etcCnt = 0;
			etcSum = 0;
			$(".total-etc").html("<div>없음</div>");
			
			$(".sidedelete").find("input[type=number]").val(0);
			sideCnt = 0;
			sideSum = 0;
			$(".total-side").html("<div>없음</div>");
			
		}else{
			var cnt = parseInt($("#qty").val()) + 1;
			$(".opt_qty").val(cnt);
		}
	} else if (parseInt($("#qty").val())*2 < etcDrink){
		var result2 = confirm("피자 수량을 줄이면  음료가 초기화 됩니다.");
		if(result2){
			$(".etcdelete").find("input[type=number]").val(0);
			etcCnt = 0;
			etcSum = 0;
			$(".total-etc").html("<div>없음</div>");
		}else{
			var cnt = parseInt($("#qty").val()) + 1;
			$(".opt_qty").val(cnt);
		}
	} else if (parseInt($("#qty").val()) < sideVan){
		var result3 = confirm("피자 수량을 줄이면  사이드가 초기화 됩니다.");
		if(result3){
		$(".sidedelete").find("input[type=number]").val(0);
		sideCnt = 0;
		sideSum = 0;
		$(".total-side").html("<div>없음</div>");
			
		}else{
			var cnt = parseInt($("#qty").val()) + 1;
			$(".opt_qty").val(cnt);
		}
	}
	
	goodsSum = (parseInt(pizzaAmount) + toppingSum)* parseInt($("#qty").val())+ sideSum + etcSum;
	goodsCnt = parseInt($("#qty").val()) + sideCnt + etcCnt;//toppingCnt
	pizzaSum = parseInt(pizzaAmount) + toppingSum;
	
	$(".total-pizza").text($(".title.pizza").text() + "("+ pizzaSum.cvtNumber() +"원)" + "x" + parseInt($("#qty").val()));
	$(".total-count").text(goodsCnt);
	$(".total-price_sum").text(goodsSum.cvtNumber() + "원");
};

//토핑 코드 만들기
var getToppingCode = function() {
	var toppingCode = "";
	
	$(".btn-minus.topping").each(function() {
		if($(this).siblings(".setNum").val() != "0") {
			if(toppingCode != "") {
				toppingCode += ",";
			}
			toppingCode += $(this).siblings(".setCode").val()+":"+$(this).siblings(".setNum").val();
		}
	});
	return toppingCode;
};

</script>
</head>

</body>
</html>
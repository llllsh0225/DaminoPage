// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("BarChar_daily"); //차트이름

var dailyArr = new Array(); 						//foreach hidden 값들을 배열에 담는다
for(var i=0; i<4; i++){ 							//최근 등록 4개를 넎는다 (임시)
	dailyArr[i] = $("#daily"+i).val();				//value값들을 차례로 담는다.
}
var dailyCountArr = new Array(); 					//foreach hidden 값들을 배열에 담는다
for(var i=0; i<4; i++){ 							//최근 등록 4개를 넎는다 (임시)
	dailyCountArr[i] = Number($("#dailyCount"+i).val());
}



var BarChart2 = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: dailyArr.reverse(), 			//x축 내용 , resverse로 배열안에 내용을 나열한다
    datasets: [{
      label: "일일 매출액",
      backgroundColor: "rgba(2,117,216,1)",
      borderColor: "rgba(2,117,216,1)",
      data: dailyCountArr.reverse(),		//y축 내용
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 4
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 20,
          maxTicksLimit: 5
        },
        gridLines: {
          display: true
        }
      }],
    },
    legend: {
      display: false
    }
  }
});




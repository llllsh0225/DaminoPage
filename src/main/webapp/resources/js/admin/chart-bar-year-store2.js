// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var storeYearlyArr = new Array();
for(var i=0; i<5; i++){
	storeYearlyArr[i]= $("#storeYearly"+i).val();
}
var storeYearlyCountArr = new Array();
for(var i=0; i<5; i++){
	storeYearlyCountArr[i]= Number($("#storeYearlyCount"+i).val());
}

var ctx = document.getElementById("Store_BarChart_Year2");

var BarChart3 = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: storeYearlyArr.reverse(), 			//x축 내용 , resverse로 배열안에 내용을 나열한다
    datasets: [{
      label: "월별 주문건수",
      backgroundColor: "rgba(2,117,216,1)",
      borderColor: "rgba(2,117,216,1)",
      data: storeYearlyCountArr.reverse(),		//y축 내용
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'year'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 5
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: Math.max.apply(0,storeYearlyCountArr),
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




// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("Store_BarChart_month");
var storeMonthlyArr = new Array();
for(var i=0; i<12; i++){
	storeMonthlyArr[i]= $("#storeMonthly"+i).val();
}
var storeMonthlyCountArr = new Array();
for(var i=0; i<12; i++){
	storeMonthlyCountArr[i]= Number($("#storeMonthlyCount"+i).val());
}
var ctx = document.getElementById("Store_BarChart_month"); //차트이름

var BarChart2 = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: storeMonthlyArr.reverse(), 			//x축 내용 , resverse로 배열안에 내용을 나열한다
    datasets: [{
      label: "월별 주문건수",
      backgroundColor: "rgba(2,117,216,1)",
      borderColor: "rgba(2,117,216,1)",
      data: storeMonthlyCountArr.reverse(),		//y축 내용
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 12
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: Math.max.apply(0,storeMonthlyCountArr),
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




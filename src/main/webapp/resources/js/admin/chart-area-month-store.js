// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("Store_AreaChart_month");
var storeMonthlyArr = new Array();
for(var i=0; i<12; i++){
	storeMonthlyArr[i]= $("#storeMonthly"+i).val();
}
var storeMonthlySalesArr = new Array();
for(var i=0; i<12; i++){
	storeMonthlySalesArr[i]= Number($("#storeMonthlySales"+i).val());
}
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: storeMonthlyArr.reverse(),//x축
    datasets: [{
      label: "매출액",
      lineTension: 0.3,
      backgroundColor: "rgba(100,100,100,0.4)", //바탕 부분 색(투명도 필요)
      borderColor: "black",         // 선 색
      pointRadius: 5,
      pointBackgroundColor: "grey", // 선 점(바탕)
      pointBorderColor: "#000000", // 선 점 테두리
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "red", //선택되었으때 점 색 변
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: storeMonthlySalesArr.reverse(),//y축
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
          maxTicksLimit: 12
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: Math.max.apply(0,storeMonthlySalesArr),
          maxTicksLimit: 6
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});


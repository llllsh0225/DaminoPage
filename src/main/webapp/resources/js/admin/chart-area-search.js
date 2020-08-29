// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

var ctx = document.getElementById("AreaChart_Search");
var searchCount = $(".searchCount").length;

var dateSearchArr = new Array();
for(var i=0; i<searchCount; i++){
	dateSearchArr[i]= $("#dateSearch"+i).val();
}
var salesSearchArr = new Array();
for(var i=0; i<searchCount; i++){
	salesSearchArr[i]= Number($("#salesSearch"+i).val());
}

var myLineChart2 = new Chart(ctx, {
  type: 'line',
  data: {
    labels: dateSearchArr.reverse(),//x축
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
      data: salesSearchArr.reverse(),//y축
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
          maxTicksLimit: searchCount
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: Math.max.apply(0,salesSearchArr),//데이터 최대값을 배열에서 가장 큰 값으로함
          maxTicksLimit: 10
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
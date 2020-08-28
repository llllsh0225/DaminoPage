var ctx = document.getElementById("AreaChart_Search");
var dateSearchArr = new Array();
for(var i=0; i<12; i++){
	dateSearchArr[i]= $("#dateSearch"+i).val();
}
var salesSearchArr = new Array();
for(var i=0; i<12; i++){
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
          maxTicksLimit: 12
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 1000000,
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
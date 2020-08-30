//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("BarChart_Search");
var countSearchArr = new Array();
for(var i=0; i<searchCount; i++){
	countSearchArr[i]= Number($("#countSearch"+i).val());
}

var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: dateSearchArr,
    datasets: [{
      label: "주문건수",
      backgroundColor: "rgba(100,100,100,1)",
      borderColor: "black",
      data: countSearchArr.reverse(),
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
          max: Math.max.apply(0,countSearchArr),
          maxTicksLimit: 4
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
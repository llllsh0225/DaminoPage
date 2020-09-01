//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("AreaChart_year");
var yearlyArr = new Array();
for(var i=0; i<5; i++){
	yearlyArr[i]= $("#yearly"+i).val();
}
var yearlySalesArr = new Array();
for(var i=0; i<5; i++){
	yearlySalesArr[i]= Number($("#yearlySales"+i).val());
}

var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: yearlyArr.reverse(),
    datasets: [{
      label: "매출액",
      backgroundColor: "rgba(100,100,100,1)",
      borderColor: "black",
      data: yearlySalesArr.reverse(),
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
          maxTicksLimit: 6
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 1500000,
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
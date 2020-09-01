//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("Store_AreaChart_year");
var storeYearlyArr = new Array();
for(var i=0; i<5; i++){
	storeYearlyArr[i]= $("#storeYearly"+i).val();
}
var storeYearlySalesArr = new Array();
for(var i=0; i<5; i++){
	storeYearlySalesArr[i]= Number($("#storeYearlySales"+i).val());
}

var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: storeYearlyArr.reverse(),
    datasets: [{
      label: "매출액",
      backgroundColor: "rgba(100,100,100,1)",
      borderColor: "black",
      data: storeYearlySalesArr.reverse(),
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
          max: Math.max.apply(0,storeYearlySalesArr),
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
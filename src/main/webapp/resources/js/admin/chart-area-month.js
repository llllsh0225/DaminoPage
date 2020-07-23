// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("AreaChart_month");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],
    datasets: [{
      label: "Sessions",
      lineTension: 0.3,
      backgroundColor: "rgba(254,220,113,0.4)", //바탕 부분 색(투명도 필요)
      borderColor: "#4C514A",         // 선 색
      pointRadius: 5,
      pointBackgroundColor: "#F38F11", // 선 점(바탕)
      pointBorderColor: "#000000", // 선 점 테두리
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "#4C514A", //선택되었으때 점 색 변
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: [1000, 1322, 866, 1444, 1789, 1313, 601, 784, 656, 966, 945, 644, 1602],
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
          max: 2000,
          maxTicksLimit: 4
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

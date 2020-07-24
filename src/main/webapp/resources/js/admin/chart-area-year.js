// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("AreaChart_year");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["2017","2018","2019","2020"],
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
      data: [999.3, 1200.5,1032.4,1377],
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
          max: 2000,
          maxTicksLimit: 3
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

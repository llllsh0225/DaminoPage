// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx = document.getElementById("PieChart_mw");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["남성", "여성"],
    datasets: [{
      data: [46.7, 53.3],
      backgroundColor: ['#004098 ', '#FF2C2C'],
    }],
  },
});

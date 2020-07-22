// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx = document.getElementById("PieChart_sellrank");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["포테이토", "비싼피자", "보통피자", "싼피자"],
    datasets: [{
      data: [13.2, 16.8, 33.2, 7.5],
      backgroundColor: ['#F38F11', '#A0855A ', '#333333', '#4C514A'],
    }],
  },
});

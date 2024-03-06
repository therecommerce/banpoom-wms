/*=========================================================================================
    File Name: page-users.js
    Description: Users page
    --------------------------------------------------------------------------------------
    Item Name: 
    Author: sykim
    Author URL: 
==========================================================================================*/


function init_chart_options() {

	var options = {
		series : [],
		chart : {
			type : 'area',
			stacked : false,
			height : 350,
			zoom : {
				type : 'x',
				enabled : true,
				autoScaleYaxis : true
			},
			toolbar : {
				autoSelected : 'zoom'
			}
		},
		dataLabels : {
			enabled : false
		},
		markers : {
			size : 0,
		},
		title : {
			text : 'Stock Price Movement',
			align : 'left'
		},
		fill : {
			type : 'gradient',
			gradient : {
				shadeIntensity : 1,
				inverseColors : false,
				opacityFrom : 0.5,
				opacityTo : 0,
				stops : [ 0, 90, 100 ]
			},
		},
		yaxis : {
			labels : {
				formatter : function(val) {
					
					return val;
				},
			},
			title : {
				text : 'Price'
			},
		},
		xaxis : {
			type : 'datetime',
		    labels: {
		        datetimeFormatter: {
		          year: 'yyyy',
		          month: 'MMM \'yy',
		          day: 'dd MMM',
		          hour: 'HH:mm'
		        }
		    }
		},
		tooltip : {
			shared : false,
			y : {
				formatter : function(val) {
					return (val / 1000000).toFixed(0)
				}
			}
		},
		noData: {
		    text: 'Loading...'
		  }
	};
	
	return options;
}


var TICKINTERVAL = 1000
let XAXISRANGE = 300 * 1000 

function init_realtime_chart_options(title, min, max, data) {
	
	var options = {
        series: [{
        data: data.slice()
      }],
        chart: {
        id: 'realtime',
        height: 350,
        type: 'line',
        animations: {
          enabled: true,
          easing: 'linear',
          dynamicAnimation: {
            speed: 1000
          }
        },
        toolbar: {
          show: false
        },
        zoom: {
          enabled: false
        }
      },
      dataLabels: {
        enabled: false
      },
      stroke: {
        curve: 'smooth'
      },
      title: {
        text: title,
        align: 'left'
      },
      markers: {
        size: 0
      },
      xaxis: {
        type: 'datetime',
        range: XAXISRANGE,
      },
      yaxis: {
    	  min: min,
          max: max
      },
      legend: {
        show: false
      },
	};
	
	return options;
}

//custom colors declaration
var $themeColor = ["#42A5F5", "#FDD835", "#FFA87D", "#FF7588"];

function init_pie_chart_options(seriesVal) {

	var pieSimpleChart = {
		  chart: {
		    height: 300,
		    type: 'pie',
		  },
		  labels: ['정상', '관심', '주의', '위급'],
		  series: seriesVal,
		  responsive: [{
		    breakpoint: 1200,
		    options: {
		      chart: {
		        width: 300
		      },
		      legend: {
		        position: 'bottom'
		      }
		    }
		  }, {
		    breakpoint: 768,
		    options: {
		      chart: {
		        width: 520
		      },
		      legend: {
		        position: 'right'
		      }
		    }
		  }, {
		    breakpoint: 620,
		    options: {
		      chart: {
		        width: 450
		      },
		      legend: {
		        position: 'right'
		      }
		    }
		  }, {
		    breakpoint: 480,
		    options: {
		      chart: {
		        width: 250
		      },
		      legend: {
		        position: 'bottom'
		      }
		    }
		  }],
		  fill: {
		    colors: $themeColor
		  },
		  colors:$themeColor
	}
	
	return pieSimpleChart;
}

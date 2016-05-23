$(document).ready(function() {

  var conferenceDate = new Date("Aug 30, 2016 00:00:00"); // Your timezone!
  var timeEpoch = conferenceDate.getTime()/1000;

  $('#countdown').ClassyCountdown({
    end: timeEpoch,
    labels: true,
    style: {
      element: "",
      textResponsive: .5,
      days: {
        gauge: {
          thickness: .14,
          bgColor: "rgba(255,255,255,0.2)",
          fgColor: "#1abc9c"
        },
        textCSS: 'font-size:60px; font-weight:100; color:#fff;'
      },
      hours: {
        gauge: {
          thickness: .14,
          bgColor: "rgba(255,255,255,0.2)",
          fgColor: "#2980b9"
        },
        textCSS: 'font-size:25px; font-weight:100; color:#fff;'
      },
      minutes: {
        gauge: {
          thickness: .14,
          bgColor: "rgba(255,255,255,0.2)",
          fgColor: "#8e44ad"
        },
        textCSS: 'font-size:25px; font-weight:100; color:#fff;'
      },
      seconds: {
        gauge: {
          thickness: .14,
          bgColor: "rgba(255,255,255,0.2)",
          fgColor: "#f39c12"
        },
        textCSS: 'font-size:25px; font-weight:100; color:#fff;'
      }

    },
    onEndCallback: function() {
      console.log("Time out!");
    }
  });

  $(function(){
    // $(".conf-name").typed({
    //   strings: ["$ WDI CONF"],
    //   typeSpeed: 150,
    //   showCursor: false
    // });
    $(".conf-name").typed({
      strings: ["WDI CONF 2016"],
      typeSpeed: 150,
      // startDelay: 2000,
      showCursor: true
    });
  });

});

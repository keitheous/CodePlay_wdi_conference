(function() {

function init() {
  var canvas = document.getElementById('schedule-canvas');
  var c = canvas.getContext('2d');

  // Get the canvas to fill the parent container:
  canvas.style.width='100%';
  canvas.style.height='100%';
  canvas.width  = canvas.offsetWidth;
  canvas.height = canvas.offsetHeight;

  var container = {x:0,y:0};
  var circles = [{x:400,y:400,r:60,color:357,vx:3,vy:5},
                {x:200,y:300,r:80,color:357,vx:2,vy:-4},
                {x:800,y:350,r:50,color:357,vx:5,vy:-2},
                {x:600,y:500,r:100,color:357,vx:-4,vy:-6}
                {x:0,y:0,r:100,color:357,vx:-4,vy:-6}
              ];

  function draw() {
    // c.fillStyle = "rgba(41, 128, 185, 1)";
    c.fillStyle = "rgba(41, 128, 185, 1)";
    // c.strokeStyle = 'black';
    c.fillRect(container.x,container.y,canvas.width,canvas.height);
    // c.clearRect(container.x,container.y,container.width,container.height);
    //c.strokeRect(container.x,container.y,container.width,container.height);

    for(var i=0; i <circles.length; i++){
      c.fillStyle = 'hsla(' + circles[i].color + ',50%,50%,0.2)';
      c.beginPath();
      c.arc(circles[i].x,circles[i].y,circles[i].r,0,2*Math.PI,false);
      c.fill();

      if((circles[i].x + circles[i].vx + circles[i].r > container.x + canvas.width) || (circles[i].x - circles[i].r + circles[i].vx < container.x)){
        circles[i].vx = - circles[i].vx;
      }
      if((circles[i].y + circles[i].vy + circles[i].r > container.y + canvas.height) || (circles[i].y - circles[i].r + circles[i].vy < container.y)){
        circles[i].vy = - circles[i].vy;
      }
      circles[i].x +=circles[i].vx;
      circles[i].y +=circles[i].vy;
    }
    requestAnimationFrame(draw);
  }
  requestAnimationFrame(draw);
}

//invoke function init once document is fully loaded
window.addEventListener('load',init,false);

}());  //self invoking function

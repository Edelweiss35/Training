var canvas = document.getElementById('screen');
var ctx = canvas.getContext('2d');

ctx.fillStyle = "rgb(200, 0, 0)";
ctx.fillRect(10, 10, 50, 50);

setInterval(function(){
	ctx.fillStyle = "rgba(0, 0, 200, 0.5)";
	ctx.fillRect(20, 20, 50, 50);
}, 1000);

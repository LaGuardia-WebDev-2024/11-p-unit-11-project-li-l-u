var snowX = [10, 120, 160, 200];
var snowY = [50, 170, 240, 20];
var leafX = [460, 220, 160, 300,500];
var leafY = [250, 100, 140, 200,120];
var xPositions = [0];
var yPositions = [0];
var treeImage = loadImage("https://purepng.com/public/uploads/large/purepng.com-autumn-treenaturetreeautumnmaplefall-961524674653w4vqp.png");


setup = function() {
   size(600, 450); 
   background(120, 152, 290);
  
   textSize(40);
   for(var i = 0; i < snowX.length; i++){
     text("🍃 ", snowX[i], snowY[i]);
   }
   textSize(40);
   for(var i = 0;  i < leafX.length; i++){
     text("🍂", leafX[i], leafY[i]);
   }
   
   
   fill(139,69,19);
   rect(-10, 300, 650, 220); 




};

draw = function (){ 

image(treeImage, 20, 180, 250, 250);

drawPumpkin();
  if(mousePressed){
  xPositions.push(mouseX);
  yPositions.push(mouseY);}
  


};

var drawPumpkin = function() {
    for (var i = 0; i < yPositions.length; i++) {
        text("🎃", xPositions[i], yPositions[i]);
    }
    
};

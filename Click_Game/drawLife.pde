int life = 15;    //original life that changes in the miss() function
//^^ This is bad form.  If you have global variables declare them in your intial program 
void drawLife() {
  float hartX = width;
  int playerLife = life;  //created to have changed life value in the for loop
  
  //draw "life" number of hart images
  for (int i = 0; i < playerLife; i++) {
    //println(playerLife);
    playerLife = life;   //updated value of playerLife
    tint(0);    //changes the hart to black(the image was originally red & white)  
    image(hart, hartX, 0, width/32, width/32);    //draw the image
    hartX -= width/32;        //move the image to the left
  }
  
  //if player dies (= 0 life)
  if (life == 0) {
    gameState = "end";
  }
}

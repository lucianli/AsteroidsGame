class Spaceship extends Floater  
{   
  public Spaceship()
  {
  	corners = 25;
  	xCorners = new int[corners];
  	yCorners = new int[corners];
  	xCorners[0] = 12;
  	yCorners[0] = 0;
  	xCorners[1] = 10;
  	yCorners[1] = 1;
  	xCorners[2] = 8;
  	yCorners[2] = 1;
  	xCorners[3] = 6;
  	yCorners[3] = 3;
  	xCorners[4] = 3;
  	yCorners[4] = 4;
  	xCorners[5] = 1;
  	yCorners[5] = 9;
  	xCorners[6] = -3;
  	yCorners[6] = 15;
  	xCorners[7] = -6;
  	yCorners[7] = 16;
  	xCorners[8] = -4;
  	yCorners[8] = 10;
  	xCorners[9] = -3;
  	yCorners[9] = 4;
  	xCorners[10] = -6;
  	yCorners[10] = 4;
  	xCorners[11] = -6;
  	yCorners[11] = 2;
    xCorners[12] = -4;
    yCorners[12] = 2;
  	xCorners[13] = -4;
  	yCorners[13] = -2;
  	xCorners[14] = -6;
  	yCorners[14] = -2;
    xCorners[15] = -6;
    yCorners[15] = -4;
  	xCorners[16] = -3;
  	yCorners[16] = -4;
  	xCorners[17] = -4;
  	yCorners[17] = -10;
  	xCorners[18] = -6;
  	yCorners[18] = -16;
  	xCorners[19] = -3;
  	yCorners[19] = -15;
  	xCorners[20] = 1;
  	yCorners[20] = -9;
  	xCorners[21] = 3;
  	yCorners[21] = -4;
  	xCorners[22] = 6;
  	yCorners[22] = -3;
  	xCorners[23] = 8;
  	yCorners[23] = -1;
  	xCorners[24] = 10;
  	yCorners[24] = -1;
  	myColor = color(200,60,60);
  	myCenterX = 300;
  	myCenterY = 300;
  	myDirectionX = 0;
  	myDirectionY = 0;
  	myPointDirection = 0;
  }
  public void setX(int x) {myCenterX = x;}  
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}  
  public double getDirectionX() {return myDirectionX;}  
  public void setDirectionY(double y) {myDirectionY = y;} 
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}  
  public double getPointDirection() {return myPointDirection;}
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if (key == 'w')
    {
      stroke(255,255,255);
      line(-6,3,-22,3);
      line(-6,-3,-22,-3);
      stroke(50,100,255);
      line(-6,4,-22,4);
      line(-6,2,-22,2);
      line(-6,-4,-22,-4);
      line(-6,-2,-22,-2);
    }
    if (key == 's')
    {
      stroke(255,255,255);
      line(1,9,6,9);
      line(1,-9,6,-9);
      stroke(50,100,255);
      line(1,10,6,10);
      line(1,8,6,8);
      line(1,-10,6,-10);
      line(1,-8,6,-8);
    }
    
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}

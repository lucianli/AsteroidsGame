class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 6;
		xCorners = new int[corners];
  		yCorners = new int[corners];
  		xCorners[0] = (int)(Math.random()*3)+27;
  		yCorners[0] = (int)(Math.random()*3)+5;
  		xCorners[1] = (int)(Math.random()*3)+15;
  		yCorners[1] = (int)(Math.random()*3)-17;
  		xCorners[2] = (int)(Math.random()*3)-22;
  		yCorners[2] = (int)(Math.random()*3)-17;
  		xCorners[3] = (int)(Math.random()*3)-26;
  		yCorners[3] = (int)(Math.random()*3)-8;
  		xCorners[4] = (int)(Math.random()*3)-22;
  		yCorners[4] = (int)(Math.random()*3)+16;
  		xCorners[5] = (int)(Math.random()*3)+9;
  		yCorners[5] = (int)(Math.random()*3)+18;
  		myColor = color(90,90,100);
  		myCenterX = (int)(Math.random()*800);
  		myCenterY = (int)(Math.random()*800);
  		myDirectionX = (double)(Math.random()*4)-2;
  		myDirectionY = (double)(Math.random()*4)-2;
  		rotSpeed = (int)((Math.random()*9)-4);
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
  	public void move()
  	{
  		turn(rotSpeed);
  		super.move();
  	}
}
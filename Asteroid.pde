class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 6;
		xCorners = new int[corners];
  		yCorners = new int[corners];
  		xCorners[0] = (int)(Math.random()*4)+36;
  		yCorners[0] = (int)(Math.random()*4)+5;
  		xCorners[1] = (int)(Math.random()*4)+19;
  		yCorners[1] = (int)(Math.random()*4)-22;
  		xCorners[2] = (int)(Math.random()*4)-29;
  		yCorners[2] = (int)(Math.random()*4)-22;
  		xCorners[3] = (int)(Math.random()*4)-34;
  		yCorners[3] = (int)(Math.random()*4)-10;
  		xCorners[4] = (int)(Math.random()*4)-29;
  		yCorners[4] = (int)(Math.random()*4)+22;
  		xCorners[5] = (int)(Math.random()*4)+12;
  		yCorners[5] = (int)(Math.random()*4)+24;
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
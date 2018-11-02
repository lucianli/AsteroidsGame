class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 6;
		xCorners = new int[corners];
  		yCorners = new int[corners];
  		xCorners[0] = (int)(Math.random()*5)+13;
  		yCorners[0] = (int)(Math.random()*5)-2;
  		xCorners[1] = (int)(Math.random()*5)+6;
  		yCorners[1] = (int)(Math.random()*5)-7;
  		xCorners[2] = (int)(Math.random()*5)-10;
  		yCorners[2] = (int)(Math.random()*5)-7;
  		xCorners[3] = (int)(Math.random()*5)-12;
  		yCorners[3] = (int)(Math.random()*5)-2;
  		xCorners[4] = (int)(Math.random()*5)-10;
  		yCorners[4] = (int)(Math.random()*5)+7;
  		xCorners[5] = (int)(Math.random()*5)+5;
  		yCorners[5] = (int)(Math.random()*5)+9;
  		myColor = color(100,100,100);
  		myCenterX = (int)(Math.random()*800);
  		myCenterY = (int)(Math.random()*800);
  		myDirectionX = (int)(Math.random()*21)-10;
  		myDirectionY = (int)(Math.random()*21)-10;
  		rotSpeed = (int)((Math.random()*31)-15);
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
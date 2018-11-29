class Star
{
  	private int myX;
	private int myY;
	private int mySize;
	Star()
	{
		myX = (int)(Math.random()*600);
		myY = (int)(Math.random()*600);
		mySize = (int)(Math.random()*4+1);
	}
	public void show()
	{
		fill(255);
		noStroke();
		ellipse(myX, myY, mySize, mySize);
	}
}

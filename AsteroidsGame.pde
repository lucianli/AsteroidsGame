Spaceship ship;
Star[] stars;
Planet[] system;
public void setup() 
{
 	size(600,600);
 	ship = new Spaceship();
 	stars = new Star[200];
 	for (int i=0; i<stars.length; i++) 
 	{
  		stars[i] = new Star();
 	}
 	system = new Planet[8];
 	for (int i=0; i<system.length; i++)
 	{
 		system[i] = new Planet();
 	}
}
public void draw() 
{
	background(0);
 	ship.show();
 	ship.move();
 	for (int i=0; i<stars.length; i++)
 	{
 		stars[i].show();
 	}
 	for (int i=0; i<system.length; i++)
 	{
 		system[i].show();
 	}
}
public void keyPressed()
{
	if (key == 'w')
	{
		ship.accelerate(2);
	}
	if (key == 's')
	{
		ship.accelerate(-1.8);
	}
	if (key == 'a')
	{
		ship.turn(-10);
	}
	if (key == 'd')
	{
		ship.turn(10);
	}
	if (keyCode == 32)
	{
		background(255);
		ship.setX((int)(Math.random()*600));
		ship.setY((int)(Math.random()*600));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random()*360));
	}
}
class Planet
{
	private int planetX;
	private int planetY;
	private int planetSize;
	private int planetColor;
	Planet()
	{
		planetX = (int)(Math.random()*600);
		planetY = (int)(Math.random()*600);
		planetSize = (int)(Math.random()*10)+5;
		planetColor = color((int)(Math.random()*100)+70, (int)(Math.random()*100)+70, (int)(Math.random()*100)+70);
	}
	public void show()
	{
		fill(planetColor);
		noStroke();
		ellipse(planetX, planetY, planetSize, planetSize);
	}
}


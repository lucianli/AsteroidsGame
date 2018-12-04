Spaceship ship;
Star[] galaxy;
ArrayList<Asteroid> belt;
Planet[] system;
ArrayList<Bullet> magazine;
public void setup() 
{
 	size(600,600);
 	ship = new Spaceship();
 	galaxy = new Star[200];
 	for (int i=0; i<galaxy.length; i++) 
 	{
  		galaxy[i] = new Star();
 	}
 	system = new Planet[10];
 	for (int i=0; i<system.length; i++)
 	{
 		system[i] = new Planet();
 	}
 	belt = new ArrayList<Asteroid>();
 	for (int i=0; i<12; i++)
 	{
 		belt.add(new Asteroid());
 	}
 	magazine = new ArrayList<Bullet>();
}
public void draw() 
{
	background(0);
	for (int i=0; i<galaxy.length; i++)
 	{
 		galaxy[i].show();
 	}
 	for (int i=0; i<system.length; i++)
 	{
 		system[i].show();
 	}
 	for (int i=0; i<belt.size(); i++)
 	{
 		belt.get(i).show();
 		belt.get(i).move();
 	}
 	for (int i=0; i<magazine.size(); i++)
 	{
 		magazine.get(i).show();
 		magazine.get(i).move();
 	}
 	ship.show();
 	ship.move();
 	for (int i=0; i<belt.size(); i++)
 	{
 		if (dist(ship.getX(), ship.getY(), belt.get(i).getX(), belt.get(i).getY())<38)
 		{
 			belt.remove(i);
 		}
 	}
 	for (int i=0; i<magazine.size(); i++)
 	{
 		for (int j=0; j<belt.size(); j++)
 		{
 			if (dist(magazine.get(i).getX(), magazine.get(i).getY(), belt.get(j).getX(), belt.get(j).getY())<30)
 			{
 				belt.remove(j);
 				magazine.remove(i);
 				break;
 			}
 		}
 	}

 }
public void keyPressed()
{
	if (key == 'w')
	{
		ship.accelerate(1.2);
	}
	if (key == 's')
	{
		ship.accelerate(-1);
	}
	if (key == 'a')
	{
		ship.turn(-10);
	}
	if (key == 'd')
	{
		ship.turn(10);
	}
	if (key == 'h')
	{
		background(255);
		ship.setX((int)(Math.random()*600));
		ship.setY((int)(Math.random()*600));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random()*360));
	}
	if (key == 'q')
	{
		magazine.add(new Bullet(ship));
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
		planetSize = (int)(Math.random()*5)+8;
		planetColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	}
	public void show()
	{
		fill(planetColor);
		noStroke();
		ellipse(planetX, planetY, planetSize, planetSize);
	}
}


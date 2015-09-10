int m = 20;
float s = m* .6;
int count = 0;
int sizeX = 880;
int sizeY = 880;

void setup()
{
	background(255);
	size(sizeX,sizeY);
	noLoop();
}

void draw()
{
	//your code here
	for (int a = 0; a < sizeX; a = a + m*4)
	{
		for (int b = 0; b < sizeY; b = b + m*4)
		{
			Die dice = new Die(a,b);
			dice.show();
			dice.roll();
		}
	}
	fill(0,0,0,150);
	textSize(sizeX/(1.95555));
	text(count, sizeX/(29+(1/3)), sizeY/(1.46666));
}

void mousePressed()
{
	redraw();
	count = 0;
}

class Die //models one single dice cube
{
	//variable declarations here
	int x1, y1, num;
	Die(int x, int y) 
	{
		//variable initializations here
		int m = 200;
		x1 = x;
		y1 = y;
		num = (int)((Math.random()*6)+1);
		count = count + num;
	}

	void roll()
	{
		noStroke();
		fill(0);
		//your code here
		if(num == 1) 
		{
			ellipse(x1+40, y1+40, s, s);
		}
		else if(num == 2)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+60, y1+60, s, s);
		}
		else if(num == 3)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+40, y1+40, s, s);
			ellipse(x1+60, y1+60, s, s);
		}
		else if(num == 4)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+20, y1+60, s, s);
			ellipse(x1+60, y1+60, s, s);
			ellipse(x1+60, y1+20, s, s);
		}
		else if(num == 5)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+20, y1+60, s, s);
			ellipse(x1+60, y1+60, s, s);
			ellipse(x1+60, y1+20, s, s);
			ellipse(x1+40, y1+40, s, s);
		}
		else if(num == 6)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+20, y1+60, s, s);
			ellipse(x1+60, y1+60, s, s);
			ellipse(x1+60, y1+20, s, s);
			ellipse(x1+20, y1+40, s, s);
			ellipse(x1+60, y1+40, s, s);
		}
	}

	void show()
	{
		//your code here
		stroke(255,255,255);
     	fill(255,225,150);
  		rect(x1,y1,m*4,m*4,m*.8);
	}
}

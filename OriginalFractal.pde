public void setup()
{
	size(500,500);
}
public void draw()
{
	background(0);
	myFractal(250,250,5,5);
}
public void myFractal(int x, int y, int sit, int kix)
{   noFill();
	stroke(255);
	ellipse((float)x,(float)y,(float)sit, (float)kix);
	if(sit<=50)
	{   myFractal(x-25,y-25,sit*2,kix*2);
		myFractal(x-50,y-50,sit*2,kix*2);//circles created to upper left
		myFractal(x-50,y+50,sit*2,kix*2);
		myFractal(x-25,y+25,sit*2,kix*2);// circles move bottom left
		myFractal(x+25,y-25,sit*2,kix*2);
		myFractal(x+50,y-50,sit*2,kix*2);//circles created to upper right
		myFractal(x+25,y+25,sit*2,kix*2);
	   myFractal(x+50,y+50,sit*2,kix*2);//circles created to botttom right
	}
	
}
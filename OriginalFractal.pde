public void setup()
{
	size(800,800);
}
public void draw()
{
	background(0);
	myFractal(400,400,800,800);
}
public void myFractal(int x, int y, int sit, int kix)
{
	ellipse((float)x,(float)y,(float)sit, (float)kix);
	if(sit>5)
	{
	   myFractal(x,y,sit/2,kix/2);
	}
}
double rad=(float)(Math.PI/4);
double screenL=800;
double sideLength=screenL*(Math.sqrt(2)/2)+100;
double numSquares=100;
public void setup()
{
	size((int)screenL,(int)screenL);
	background(0);
	rectMode(RADIUS); //all squares are drawn with specified center and radius
	strokeWeight(5);
	//noLoop();
}
public void draw()
{
	background(0);
	translate(width/2,height/2);
	rad=(float)(Math.PI/4);
	inscribedSquares(0,0,sideLength,numSquares);
	sideLength++;
}
public void mousePressed()
{
	redraw();
}
public void inscribedSquares(double x, double y, double sideL, double nSqures)
{
	if(nSqures>0)
	{
		rotate((float)rad);
		int r=255;
		int g=137;
		int b=74;
		fill(r,g,b,50);
		stroke(r,g,b);
		rect((float)x,(float)y,(float)sideL/2,(float)sideL/2);
		rotate((float)rad);
		nSqures--;
	}
	if(nSqures>0) 
	{
		rad=rad+(double)(Math.PI/4);
		sideL=sideL*(Math.sqrt(2)/2);
		inscribedSquares(x,y,sideL,nSqures);
	}
}
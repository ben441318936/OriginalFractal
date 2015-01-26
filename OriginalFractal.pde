double rad=(float)(Math.PI/4);
double screenL=500;
double sideLength=screenL*Math.sqrt(2)/2+100;
int numSquares=50;
int r=170;
int g=0;
int b=255;
public void setup()
{
	size((int)screenL,(int)screenL);
	background(0);
	rectMode(RADIUS); //all squares are drawn with specified center and radius
	strokeWeight(1);
	//noLoop();
}
public void draw()
{
	background(0);
	translate(width/2,height/2);
	rad=(float)(Math.PI/4);
	inscribedSquares(0,0,sideLength,numSquares);
}
public void mousePressed()
{
	println(frameRate);
}
public void inscribedSquares(double x, double y, double sideL, int nSqures, int cProgression)
{
	if(nSqures>0)
	{
		rotate((float)rad);
		if(nSqures)
		fill(r,g,b);
		stroke(255);
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
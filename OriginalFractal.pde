public double rad=(float)(Math.PI/4);
public double screenL=500;
public double sideLength1=1; //screenL*Math.sqrt(2)/2+100
public int numSquares=12;
public int r=220;
public int g=122;
public int b=255;
public void setup()
{
	size((int)screenL,(int)screenL);
	background(0);
	rectMode(RADIUS); //all squares are drawn with specified center and radius
	smooth();
}
public void draw()
{
	translate((float)(screenL/2), (float)(screenL/2));
	rad=(float)(Math.PI/4);
	r=220;
	g=122;
	b=255;
	inscribedSquares(0,0,sideLength1,numSquares);
	sideLength1++;
	sideLength1*=1.01;
	if(sideLength1>=screenL/Math.pow(Math.sqrt(2)/2, numSquares-1)+100) 
	{
		sideLength1=1;
		numSquares++;
	}
}
public void inscribedSquares(double x, double y, double sideL, int nSquares)
{
	if(nSquares>0)
	{
		rotate((float)rad);
		if(nSquares==numSquares) { }
		else if(nSquares>numSquares-1-1*(numSquares-2)/5)
		{
			r=r-98/((numSquares-2)/5);
		}
		else if(nSquares>numSquares-1-2*(numSquares-2)/5)
		{
			r=122;
			g=g+133/((numSquares-2)/5);
		}
		else if(nSquares>numSquares-1-3*(numSquares-2)/5)
		{
			g=255;
			b=b-133/((numSquares-2)/5);
		}
		else if(nSquares>numSquares-1-4*(numSquares-2)/5)
		{
			b=122;
			r=r+133/((numSquares-2)/5);
		}
		else if(nSquares>numSquares-1-5*(numSquares-2)/5)
		{
			r=255;
			g=g-133/((numSquares-2)/5);
		}
		else
		{
			r=0; g=0; b=0;
		}
		fill(r,g,b);
		stroke(0);
		rect((float)x,(float)y,(float)sideL/2,(float)sideL/2);
		rotate((float)rad);
		nSquares--;
	}
	if(nSquares>0) 
	{
		rad=rad+(double)(Math.PI/4);
		sideL=sideL*(Math.sqrt(2)/2);
		inscribedSquares(x,y,sideL,nSquares);
	}
}
import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalFractal extends PApplet {

double rad=(float)(Math.PI/4);
double screenL=500;
double sideLength=screenL*(Math.sqrt(2)/2);
double numSquares=100;
public void setup()
{
	size((int)screenL,(int)screenL);
	background(0);
	translate(width/2,height/2);
	rectMode(RADIUS); //all squares are drawn with specified center and radius
	strokeWeight(5);
	inscribedSquares(0,0,sideLength,numSquares);
}
public void draw()
{

}
public void inscribedSquares(double x, double y, double sideL, double nSqures)
{
	if(nSqures>0)
	{
		rotate((float)rad);
		int r=(int)(Math.random()*256);
		int g=(int)(Math.random()*256);
		int b=(int)(Math.random()*256);
		fill(r,g,b,127);
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalFractal" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

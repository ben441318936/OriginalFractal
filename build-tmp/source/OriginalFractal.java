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

public void setup()
{
	size(500,500);
	background(0);
	translate(width/2,height/2); //orgin of the the coordinate system for the entire program is at center of screen
	rectMode(RADIUS); //all squares are drawn with specified center and radius
	stroke(0);
	inscribedSquares(0,0,400,10);
}
public void draw()
{

}
public void inscribedSquares(double x, double y, double sideL, double minL)
{
	float rad=(float)(Math.PI/4);
	if(sideL<=minL) {rect((float)x,(float)y,(float)sideL/2,(float)sideL/2);}
	else
	{
		rad=rad+(float)(Math.PI/4);
		rotate(rad);
		sideL=sideL*(Math.sqrt(2)/2);
		inscribedSquares(x,y,sideL,sideL);
		rotate(-(rad+(float)(Math.PI/4)));
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

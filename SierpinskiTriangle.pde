public void setup()
{
	background(255);
	size(200,200);
}
public void draw()
{
	strokeWeight(1);
	stroke(#46D7EB);
	fill(0);
	sierpinski(0,200,200);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 20){
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
	else {
		triangle(x,y,x+len,y,x+len/2,y-(len*sin(PI/3)));
	}
}


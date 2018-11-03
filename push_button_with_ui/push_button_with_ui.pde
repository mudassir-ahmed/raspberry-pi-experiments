import processing.io.*;

void setup()
{
  size(360, 360);
  
  GPIO.pinMode(26, GPIO.INPUT);
}

void draw()
{
  
  background(255); // Paints over previous frame
  
  if (GPIO.digitalRead(26) == GPIO.HIGH)
  {
    System.out.println("Button pressed");
    fill(250, 90, 120);
    rect(30, 25, 20, 5); // rect (x-coordinate, y-coordinate, width, height);
    rect(20, 30, 40, 10);
  }
  else
  {
    fill(250, 90, 120);
    rect(30, 20, 20, 10); // rect (x-coordinate, y-coordinate, width, height);
    rect(20, 30, 40, 10);
  }
  
}

import processing.io.*;

int ledPin = 17;
boolean ledOn = false;
boolean greenLedOn = true;

int greenLed = 19;

void setup()
{
 size(250, 250);
 frameRate(2);
 GPIO.pinMode(ledPin, GPIO.OUTPUT);
 
 // Switch on greeenLed for testing
 GPIO.pinMode(greenLed, GPIO.OUTPUT);
 GPIO.digitalWrite(greenLed, GPIO.HIGH);
}

void draw()
{
  ledOn = !ledOn;
  if(ledOn)
  {
    GPIO.digitalWrite(ledPin, GPIO.HIGH);
    background(255, 0, 0); // color red when led on
  }
  else
  {
    GPIO.digitalWrite(ledPin, GPIO.LOW);
    background(102);
  }
  
  flashLED(greenLed);
  
}

private void flashLED(int pin)
{
  greenLedOn = !greenLedOn;
  if(greenLedOn)
  {
    GPIO.digitalWrite(pin, GPIO.HIGH);
  }
  else
  {
    GPIO.digitalWrite(pin, GPIO.LOW);
  }
}

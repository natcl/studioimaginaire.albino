// This example demonstrates Messenger's callback  & attach methods
// It outputs all the values of the default analog pins
// It sets the state (digitalWrite) of pins when receiving messages


#include <Messenger.h>

// Instantiate Messenger object with the message function and the default separator (the space character)
Messenger message = Messenger(); 

int redPin = 11;
int bluePin = 10;
int greenPin = 9;

int redVal;
int greenVal;
int blueVal;

// Define messenger function
void messageCompleted() {
  int pin = 0;
  // Loop through all the available elements of the message
  while ( message.available() ) {
    redVal = message.readInt();
    greenVal = message.readInt();
    blueVal = message.readInt();
    // Set the pin as determined by the message
    analogWrite(redPin, redVal);
    analogWrite(greenPin, greenVal);
    analogWrite(bluePin, blueVal);
  }
}

void setup() {
  // Initiate Serial Communication
  Serial.begin(115200); 
  message.attach(messageCompleted);
}

void loop() {
  // The following line is the most effective way of 
  // feeding the serial data to Messenger
  while ( Serial.available( ) ) message.process(Serial.read( ) );
}


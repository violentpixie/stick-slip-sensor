
// The Arduino Uno ADC is 10 bits (thus, 0 - 1023 values)
#include <ros.h>
//#include <std_msgs/Int8.h>/
#include <std_msgs/Int16MultiArray.h>
#define MAX_ANALOG_INPUT_VAL 1023
#define Hall_Sensor A0
#define Hall_Sensor2 A2 

ros::NodeHandle  nh;
std_msgs::Int16MultiArray hall_eff;
ros::Publisher chatter("chatter", &hall_eff);
//const int LED_OUTPUT_PIN = LED_BUILTIN;



// Define the number of samples to keep track of. The higher the number, the
// more the readings will be smoothed, but the slower the output will respond to
// the input. Using a constant rather than a normal variable lets us use this
// value to determine the size of the readings array.

const int SMOOTHING_WINDOW_SIZE = 50; // 10 samples
const int numReadings=10;
int _curReadIndex = 0;                // the index of the current reading

int readings[numReadings];            //Number of readings
int _samples[SMOOTHING_WINDOW_SIZE];  // the readings from the analog input
int _sampleTotal = 0;                 // the running total
int _sampleAvg = 0;                   // the average
int newAv = 0;
int sensorVal = 0;
int maxV = 0;

int readings2[numReadings];            //Number of readings
int _samples2[SMOOTHING_WINDOW_SIZE];  // the readings from the analog input
int _sampleTotal2 = 0;                 // the running total
int _sampleAvg2 = 0;                   // the average
int newAv2 = 0;
int sensorVal2 = 0;
int maxV2 = 0;

void setup() {

//  pinMode(LED_OUTPUT_PIN, OUTPUT);
  pinMode(Hall_Sensor,INPUT);
  
  //Serial.begin(57600);
  Serial.begin(9600);

  nh.initNode();
  nh.advertise(chatter);
  hall_eff.data = (int16_t*)malloc(sizeof(int16_t)*2);
  hall_eff.data_length = 2;
  
  for (int i = 0; i < SMOOTHING_WINDOW_SIZE; i++) {
    _samples[i] = 0;
    _samples2[i] = 0;
  }
  
  for (int i=0 ;i<numReadings;i++){
    readings[i]=analogRead(A0);// 
    readings2[i]=analogRead(A2); 
  }  
  maxV = readings[numReadings-1];
  maxV2 = readings[numReadings-1];
  analogWriteResolution(12);
}

void loop() {
  // subtract the last reading:
  _sampleTotal = _sampleTotal - _samples[_curReadIndex];
  _sampleTotal2 = _sampleTotal2 - _samples2[_curReadIndex];

  // read the sensor value
  sensorVal = analogRead(Hall_Sensor);
  sensorVal2 = analogRead(Hall_Sensor2);

  _samples[_curReadIndex] = sensorVal;
  _samples2[_curReadIndex] = sensorVal2;
  
  // add the reading to the total:
  _sampleTotal = _sampleTotal + _samples[_curReadIndex];
  _sampleTotal2 = _sampleTotal2 + _samples2[_curReadIndex];
  
  // advance to the next position in the array:
  _curReadIndex = _curReadIndex + 1;

  // if we're at the end of the array...
  if (_curReadIndex >= SMOOTHING_WINDOW_SIZE) {
    // ...wrap around to the beginning:
    _curReadIndex = 0;
  }

  // calculate the average:
  _sampleAvg = _sampleTotal / SMOOTHING_WINDOW_SIZE;
  _sampleAvg2 = _sampleTotal2 / SMOOTHING_WINDOW_SIZE;
  
  newAv = abs(_sampleAvg - maxV);  
  newAv2 = abs(_sampleAvg2 - maxV2);  
  hall_eff.data[0] = newAv;
  hall_eff.data[1] = newAv2;
  Serial.print(newAv);
  Serial.print(",");
  Serial.println(newAv2);
  chatter.publish( &hall_eff );
  nh.spinOnce();
  delay(50);
}

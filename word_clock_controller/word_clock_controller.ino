#include <avr/io.h>
#include <avr/interrupt.h>

#define TIME_UNINIT 0
#define TIME_FRESH  1
#define TIME_STALE  2
#define TIME_BUSY   3

typedef struct time_struct {
  byte seconds;
  byte minutes;
  byte hours;
  byte date;
  byte mth;
  byte yr;
  byte is_PM;
} Time;
const byte rtcAddr = 0xDE, lowLEDAddr = 0x32, highLEDAddr = 0x2A, allLEDAddr = 0xE0;
volatile byte prevPinValues, currRow, twStatus, timeState, brightness;
volatile uint32_t seconds = 0, hundredth_milli = 0;
uint32_t prevLineTime = 0;
byte currAddr, baseGreen = 255, baseRed = 255, baseBlue = 255, animGreen, animRed, animBlue, animUpdated = 0;
byte timeArray[7] = {0, 0, 0, 0, 0, 0, 0};
Time currTime, prevTime;
byte clockFace[11][48] = {{0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0},
                          {0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0}};

#include "animation.h"
#include "RTC.h"
#include "I2C.h"

void setLEDs(byte toDisplay){
  PORTB &=~((1 << PORTB0) | (1 << PORTB7));
  PORTD &= ~((1 << PORTD5) | (1 << PORTD6) | (1 << PORTD7));
  if(toDisplay & 0x08)
    PORTB |= 1 << PORTB0;
  if(toDisplay & 0x10)
    PORTD |= 1 << PORTD7;
  if(toDisplay & 0x20)
    PORTD |= 1 << PORTD6;
  if(toDisplay & 0x40)
    PORTD |= 1 << PORTD5;
  if(toDisplay & 0x80)
    PORTB |= 1 << PORTB7;
}

void setup(){
  DDRB &= ~((1 << DDB2) | (1 << DDB1));
  DDRB |= (1 << DDB6) | (1 << DDB7) | (1 << DDB0);
  DDRD |= (1 << DDD0) | (1 << DDD1) | (1 << DDD2) | (1 << DDD3) 
          | (1 << DDD4) | (1 << DDD5) | (1 << DDD6) | (1 << DDD7);
  PORTB &= ~((1 << PORTB6) | (1 << PORTB7) | (1 << PORTB0));
  PORTD &= 0x00;
  TWSR &= ~((1 << TWPS1) | (1 << TWPS0));
  TWBR = 2;
  TWCR |= (1 << TWEN);
  PCICR |= (1 << PCIE0);
  PCMSK0 |= (1 << PCINT1) | (1 << PCINT0);
  //TCCR0A |= (1 << WGM01);
  TCCR0B |= (1 << CS01);
  TIMSK0 |= (1 << OCIE0A);
  OCR0A = 10;
  prevPinValues = PINB & ((1 << PINB2) | (1 << PINB1));
  brightness = 128; //50%
  animGreen = 0;
  animRed = 0;
  animBlue = 0;
  currRow = 0;
  sei();
  while(hundredth_milli < 200);
  initTime();
  initLEDControllers();
}

void loop(){
  uint32_t hm = hundredth_milli;
  if(hm < prevLineTime){
    hm += 10000;
  }
  if(hm - prevLineTime >= 12){
    //Send to display
    displayLine(currRow);
    currRow = (currRow + 1) % 11;
    prevLineTime = hundredth_milli;
  }
  if(seconds >= 10){
    //Update time, rerasterize, set seconds to 0
    getTime();
    rasterize();
    seconds = 0;
  }
  if(currRow == 0 && animUpdated == 0){
    updateAnimationColors();
    updateAnimations();
    animUpdated = 1;
  } else if(currRow != 0 && animUpdated != 0){
    animUpdated = 0;
  }
}

ISR(TIMER0_COMPA_vect){
  hundredth_milli++;
  if(hundredth_milli >= 10000){
    seconds++;
    hundredth_milli = 0;
  }
  TCNT0 = 0;
}

ISR(PCINT0_vect){
  byte currPinValues = PINB & ((1 << PINB2) | (1 << PINB1));
  switch(prevPinValues >> 1 | currPinValues << 1){
    
    //Both released, then top pressed
    case 0x07:
      if(brightness <= 230){
        brightness += 25;
      } else if(brightness < 255){
        brightness = 255;
      }
      break;
    //Both released, then bottom pressed
    case 0x0B:
      if(brightness >= 25){
        brightness -= 25;
      } else if(brightness > 0){
        brightness = 0;
      }
      break;
  }
  prevPinValues = currPinValues;
}


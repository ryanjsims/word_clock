#ifndef RTC_h
#define RTC_h
#include "I2C.h"
void getTime(){
  byte timeIndex = 0;
  if(writeByte(rtcAddr, timeIndex) != 0)
    return;
  
  TWCR |= (1 << TWSTA) | (1 << TWINT);
  while(!((1 << TWINT) & TWCR));

  if((TWSR & 0xF8) != 0x10){
    TWCR |= (1 << TWSTO) | (1 << TWINT);
    return;
  }
  
  if(sendAddr(rtcAddr | 0x01) != 0)
    return;
  
  while(timeIndex < 7){
    if(timeIndex < 6)
      TWCR = (1 << TWEA) | (1 << TWINT) | (1 << TWEN);
    else
      TWCR = (1 << TWINT) | (1 << TWEN);
    while(!((1 << TWINT) & TWCR));
    if(!((TWSR & 0xF8) == 0x50 || (TWSR & 0xF8) == 0x58)){
      TWCR |= (1 << TWSTO) | (1 << TWINT);
      return;
    }
    timeArray[timeIndex] = TWDR;
    timeIndex++;
  }
  TWCR |= (1 << TWSTO) | (1 << TWINT);

  currTime.seconds = ((timeArray[0] & 0x70) >> 4) * 10 + (timeArray[0] & 0x0F);
  currTime.minutes = ((timeArray[1] & 0x70) >> 4) * 10 + (timeArray[1] & 0x0F);
  currTime.hours = ((timeArray[2] & 0x10) >> 4) * 10 + (timeArray[2] & 0x0F);
  currTime.date = ((timeArray[4] & 0x30) >> 4) * 10 + (timeArray[4] & 0x0F);
  currTime.mth = ((timeArray[5] & 0x10) >> 4) * 10 + (timeArray[5] & 0x0F);
  currTime.yr = ((timeArray[6] & 0xF0) >> 4) * 10 + (timeArray[6] & 0x0F);
  currTime.is_PM = (timeArray[2] & 0x20) >> 5;
}

void initTime(){
  getTime();
  timeArray[0] |= 0x50;
  timeArray[0] |= 0x80;
  timeArray[1] |= 0x00;
  timeArray[2] |= 0x40;
  timeArray[2] |= 0x02;
  timeArray[3] = 0x03;
  timeArray[4] = 0x25;
  timeArray[5] = 0x09;
  timeArray[6] = 0x18;
  if(writeByte(rtcAddr, 0x00) != 0)
    return;
  for(int i = 0; i < 7; i++){
    if(sendByte(timeArray[i]) != 0)
      return;
  }
  TWCR |= (1 << TWSTO) | (1 << TWINT);
  prevTime.seconds = 128;
}

void updatePrevTime(){
  prevTime.seconds = currTime.seconds;
  prevTime.minutes = currTime.minutes;
  prevTime.hours = currTime.hours;
  prevTime.date = currTime.date;
  prevTime.mth = currTime.mth;
  prevTime.yr = currTime.yr;
  prevTime.is_PM = currTime.is_PM;
}
#endif
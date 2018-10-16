#ifndef animation_h
#define animation_h
#include "RTC.h"
void initLEDControllers(){
	byte configData[] = {0x80, 0x21, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00};
	writeBytes(allLEDAddr, configData, 11);
	sendStop();
	configData[0] = 0x40;
	configData[1] = 178;
	writeBytes(allLEDAddr, configData, 2);
	sendStop();
	configData[1] = 255;
	for(int i = 0x23; i < 0x39; i += 3){
		configData[0] = i;
		writeBytes(allLEDAddr, configData, 2);
		sendStop();
	}
}

void displayLine(int line){
  PORTD = 0;
  PORTB &= ~((1 << PORTB0) | (1 << PORTB6) | (1 << PORTB7));
  writeBytesPrefix(lowLEDAddr, 0x8A, clockFace[line], 24);
  writeBytesPrefix(highLEDAddr, 0x8A, clockFace[line] + 24, 24);
  sendStop();
  switch(line){
    case 0:
      PORTB |= (1 << PORTB0);
      break;
    case 1:
      PORTD |= (1 << PORTD7);
      break;
    case 2:
      PORTD |= (1 << PORTD6);
      break;
    case 3:
      PORTD |= (1 << PORTD5);
      break;
    case 4:
      PORTB |= (1 << PORTB7);
      break;
    case 5:
      PORTB |= (1 << PORTB6);
      break;
    case 6:
      PORTD |= (1 << PORTD4);
      break;
    case 7:
      PORTD |= (1 << PORTD3);
      break;
    case 8:
      PORTD |= (1 << PORTD2);
      break;
    case 9:
      PORTD |= (1 << PORTD1);
      break;
    case 10:
      PORTD |= (1 << PORTD0);
      break;
  }
  
}

void setBrightness(byte brightness){
	byte data[] = {0x08, 0x00};
	data[1] = brightness;
	writeBytes(allLEDAddr, data, 2);
	sendStop();
}

void setClockFace(int startCol, int endCol, int row){
  for(int i = startCol; i < endCol; i += 3){
    clockFace[row][i] = baseGreen;
    clockFace[row][i+1] = baseRed;
    clockFace[row][i+2] = baseBlue;
  }
}

void setClockFaceAnim(int startCol, int endCol, int row){
  for(int i = startCol; i < endCol; i += 3){
    clockFace[row][i] = animGreen;
    clockFace[row][i+1] = animRed;
    clockFace[row][i+2] = animBlue;
  }
}

void rasterize(){
  if(prevTime.minutes == currTime.minutes)
    return;
  if(!((currTime.minutes % 10 == 2 || currTime.minutes % 10 == 7) && currTime.seconds >= 30))
    return;
  int minutes = currTime.minutes;
  int hours = currTime.hours;
  int is_PM = currTime.is_PM;
  for(int i = 0; i < 11; i++){
    for(int j = 0; j < 48; j++){
      clockFace[i][j] = 0;
    }
  }
  //It is
  setClockFace(0, 12, 0);
  //Made
  setClockFace(36, 48, 8);
  //With love
  setClockFace(21, 45, 9);
  //By Ryan for Lange
  setClockFace(0, 18, 10);
  setClockFace(21, 45, 10);
  switch(minutes){
    case 52:
    case 2:
      setClockFace(27, 39, 0);
      break;
    case 47:
    case 7:
      setClockFace(39, 48, 0);
      break;
    case 42:
    case 12:
      setClockFace(9, 30, 1);
      break;
    case 32:
    case 22:
      setClockFace(0, 12, 2);
    case 37:
    case 17:
      setClockFace(30, 48, 1);
      break;
    case 27:
      setClockFace(21, 33, 2);
      break;
    case 57:
      if(hours < 12){
        hours++;
        if(hours == 12){
          is_PM = (is_PM + 1) % 2;
        }
      } else {
        hours = 1;
      }
      minutes = 0;
      break;
  }
  //Select past or till
  if(currTime.minutes <= 30){
    setClockFace(36, 48, 2);
  } else if(minutes != 0) {
    //Till
    setClockFace(3, 15, 3);
    //Increment the hour
    if(hours < 12){
      hours++;
      if(hours == 12){
        is_PM = (is_PM + 1) % 2;
      }
    } else {
      hours = 1;
    }
  }
  int startingCol = 0, endingCol = 0, row = 0;
  switch(hours){
    case 1:
      row = 3;
      startingCol = 15;
      endingCol = 24;
      break;
    case 2:
      row = 3;
      startingCol = 24;
      endingCol = 33;
      break;
    case 3:
      row = 3;
      startingCol = 33;
      endingCol = 48;
      break;
    case 4:
      row = 4;
      startingCol = 0;
      endingCol = 12;
      break;
    case 5:
      row = 4;
      startingCol = 27;
      endingCol = 39;
      break;
    case 6:
      row = 4;
      startingCol = 39;
      endingCol = 48;
      break;
    case 7:
      row = 5;
      startingCol = 0;
      endingCol = 15;
      break;
    case 8:
      row = 5;
      startingCol = 15;
      endingCol = 30;
      break;
    case 9:
      row = 5;
      startingCol = 30;
      endingCol = 42;
      break;
    case 10:
      row = 6;
      startingCol = 0;
      endingCol = 9;
      break;
    case 11:
      row = 6;
      startingCol = 9;
      endingCol = 27;
      break;
    case 12:
      row = 6;
      startingCol = 27;
      endingCol = 45;
      break;
  }
  if(!(hours == 12 && minutes == 0 && is_PM == 1)){
    setClockFace(startingCol, endingCol, row);
  } else {
    //Hi
    setClockFace(6, 12, 7);
    //Noon
    setClockFace(15, 27, 8);
    return;
  }
  //In
  setClockFace(0, 6, 7);
  //The
  setClockFace(15, 24, 7);
  //Morning
  startingCol = 24;
  endingCol = 45;
  row = 7;
  //Afternoon
  if(is_PM == 1 && hours < 5){
    startingCol = 0;
    endingCol = 27;
    row = 8;
  } else if(is_PM == 1){ //Evening
    startingCol = 0;
    endingCol = 21;
    row = 9;
  }
  setClockFace(startingCol, endingCol, row);
  
  updatePrevTime();
}

void updateAnimationColors(){
  if(animGreen <= 251 && animBlue == 0 && animRed == 0){
      animGreen += 4;
    } else if(animGreen < 255 && animBlue == 0 && animRed == 0){
      animGreen = 255;
    } else if(animGreen == 255 && animBlue <= 251 && animRed == 0){
      animBlue += 4;
    } else if(animGreen == 255 && animBlue < 255 && animRed == 0){
      animBlue = 255;
    } else if(animGreen == 255 && animBlue == 255 && animRed <= 251){
      animRed += 4;
    } else if(animGreen == 255 && animBlue == 255 && animRed < 255){
      animRed = 255;
    } else if(animGreen >= 4 && animBlue == 255 && animRed == 255){
      animGreen -= 4;
    } else if(animGreen > 0 && animBlue == 255 && animRed == 255){
      animGreen = 0;
    } else if(animGreen == 0 && animBlue >= 4 && animRed == 255){
      animBlue -= 4;
    } else if(animGreen == 0 && animBlue > 0 && animRed == 255){
      animBlue = 0;
    } else if(animGreen == 0 && animBlue == 0 && animRed >= 4){
      animRed -= 4;
    } else if(animGreen == 0 && animBlue == 0 && animRed > 0){
      animRed = 0;
    }
}

void updateAnimations(){
  if(currTime.date == 29){
    int start = (currTime.mth == 6) ? 5 : 9;
    //29th
    for(int r = start; r < 11; r++){
      clockFace[r][45] = animGreen;
      clockFace[r][46] = animRed;
      clockFace[r][47] = animBlue;
    }
  }

  if(currTime.date == 24 && currTime.mth == 9){
    //Happy, birth
    for(int i = 12; i < 27; i += 3){
      clockFace[0][i] = animGreen;
      clockFace[0][i+1] = animRed;
      clockFace[0][i+2] = animBlue;
      clockFace[4][i] = animGreen;
      clockFace[4][i+1] = animRed;
      clockFace[4][i+2] = animBlue;
    }
    //Day
    for(int i = 27; i < 36; i += 3){
      clockFace[8][i] = animGreen;
      clockFace[8][i+1] = animRed;
      clockFace[8][i+2] = animBlue;
    }
    //Lange
    for(int i = 30; i < 45; i += 3){
      clockFace[10][i] = animGreen;
      clockFace[10][i+1] = animRed;
      clockFace[10][i+2] = animBlue;
    }
  }

  if(currTime.date % 7 == 0 && currTime.hours % 7 == 0){
    //You
    for(int i = 0; i < 9; i += 3){
      clockFace[1][i] = animGreen;
      clockFace[1][i+1] = animRed;
      clockFace[1][i+2] = animBlue;
    }
    //Are
    for(int i = 12; i < 21; i += 3){
      clockFace[2][i] = animGreen;
      clockFace[2][i+1] = animRed;
      clockFace[2][i+2] = animBlue;
    }
    //Loved
    int r = 3, c = 0;
    while(r < 8){
      clockFace[r][c] = animGreen;
      clockFace[r][c+1] = animRed;
      clockFace[r][c+2] = animBlue;
      r++;
      c += 3;
    }
  }

  //December Christmas colors
  if(!(currTime.mth == 12 && currTime.date > 20 && currTime.date < 29)){
    baseGreen = 255;
    baseRed = 255;
    baseBlue = 255;
  } else if(currTime.date % 2 == 0) {
    baseGreen = 255;
    baseRed = 0;
    baseBlue = 0;
  } else {
    baseGreen = 0;
    baseRed = 255;
    baseBlue = 0;
  }
}
#endif
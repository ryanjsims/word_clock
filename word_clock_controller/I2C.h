#ifndef I2C_h
#define I2C_h
#include <avr/io.h>
#include <avr/interrupt.h>
int sendStart(){
  TWCR |= (1 << TWSTA) | (1 << TWINT);
  while(!((1 << TWINT) & TWCR));

  if(!((TWSR & 0xF8) == 0x08 || (TWSR & 0xF8) == 0x10)){
    TWCR |= (1 << TWSTO) | (1 << TWINT);
    return -1;
  }
  return 0;
}

int sendAddr(byte addr){
  TWDR = addr;
  TWCR |= (1 << TWINT);
  while(!((1 << TWINT) & TWCR));
  switch(addr & 0x01){
    case 0x00:
      if((TWSR & 0xF8) != 0x18){
        TWCR |= (1 << TWSTO) | (1 << TWINT);
        return -1;
      }
      break;
    case 0x01:
      if((TWSR & 0xF8) != 0x40){
        TWCR |= (1 << TWSTO) | (1 << TWINT);
        return -1;
      }
      break;
  }
  return 0;
}

int sendByte(byte data){
  TWDR = data;
  TWCR = (1 << TWINT) | (1 << TWEN);
  while(!((1 << TWINT) & TWCR));
  if((TWSR & 0xF8) != 0x28){
    TWCR |= (1 << TWSTO) | (1 << TWINT);
    return -1;
  }
  return 0;
}

int writeByte(byte addr, byte data){
  if(sendStart() != 0)
    return -1;
  if(sendAddr(addr) != 0)
    return -1;
  if(sendByte(data) != 0){
    return -1;
  }
  return 0;
}

int writeBytes(byte addr, byte* buffer, int num){
	if(sendStart() != 0)
		return -1;
	if(sendAddr(addr) != 0)
		return -1;
	for(int i = 0; i < num; i++){
		if(sendByte(buffer[i]) != 0)
			return -1;
	}
	return 0;
}

int writeBytesPrefix(byte addr, byte prefix, byte* buffer, int num){
	if(sendStart() != 0)
		return -1;
	if(sendAddr(addr) != 0)
		return -1;
	if(sendByte(prefix) != 0)
		return -1;
	for(int i = 0; i < num; i++){
		if(sendByte(buffer[i]) != 0)
			return -1;
	}
	return 0;
}

int readByte(byte* buff, bool ack){
	TWCR = (1 << TWINT) | (1 << TWEN) | (ack ? (1 << TWEA) : 0);
	while(!((1 << TWINT) & TWCR));
	*buff = TWDR;
	if(ack && (TWSR & 0xF8) != 0x50){
		TWCR |= (1 << TWSTO) | (1 << TWINT);
		return -1;
	} else if(!ack && (TWSR & 0xF8) != 0x58){
		TWCR |= (1 << TWSTO) | (1 << TWINT);
		return -1;
	}
	return 0;
}

int readByteFromAddr(byte addr, byte* buff, bool ack){
	if(sendStart() != 0)
		return -1;
	if(sendAddr(addr) != 0)
		return -1;
	if(readByte(buff, ack) != 0)
		return -1;
	return 0;
}

void sendStop(){
  TWCR |= (1 << TWSTO) | (1 << TWINT);
}
#endif
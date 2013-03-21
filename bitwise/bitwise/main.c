//
//  main.c
//  bitwise
//
//  Created by Long Vinh Nguyen on 10/31/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    
    unsigned char c = a | b;
    
    printf("Hex %x | %x = %x\n",a,b,c);
    printf("Decimal: %d | %d = %d\n",a,b,c);
    
    unsigned char d = a & b;
    
    printf("Hex %x & %x = %x\n",a,b,d);
    printf("Decimal: %d & %d = %d\n",a,b,d);
    
    unsigned char e = a ^ b;
    
    printf("Hex %x ^ %x = %x\n",a,b,e);
    printf("Decimal: %d ^ %d = %d\n",a,b,e);
    
    unsigned char f = ~b;
    printf("The complement of %x is %x\n",b,f);
    printf("The complement of %d is %d\n",b,f);
    
    unsigned char g = a << 2;
    printf("Hex: %x shifted left 2 places is %x\n",a,g);
    printf("Hex: %d shifted left 2 places is %d\n",a,g);
    
    unsigned char h = a >> 2;
    printf("Hex: %x shifted righ one place is %x\n",a,h);
    printf("Hex: %d shifted righ one place is %d\n",a,h);
    
    printf("Challenge %x\n",1 << 2);
    printf("Challenge %d\n",1 << 2);
    
    unsigned long long l = 0;
    for (int i = 0; i<64; i+=2){
        l |= 1ULL<<i;
    }
    
    unsigned long long k = 0;
    for (int i =0 ;i<64;i +=2)
    {
        k |= 1ULL << (i+1);
    }
    
    
    printf("The odd one of the challenge number is %llu\n",l);
    printf("The odd even of the challenge number is %llu\n",k);

    
}


//
//  main.c
//  Degrees
//
//  Created by Long Vinh Nguyen on 10/18/12.
//  Copyright (c) 2012 Long Vinh Nguyen. ˜All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float lastTemprature;

float FaraheitFromCelcius (float cel) {
    lastTemprature = cel;
    float fahr = cel * 1.8 + 32;
    printf("%f Celcius is %f Faraheit\n",cel,fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{

    float freezeInC = 0;
    float freezeInF = FaraheitFromCelcius(freezeInC);
    printf("Water freezes at %f degrees Fahraheit\n",freezeInF);
    printf("The last temprature converted was %f\n",lastTemprature);
    
    return EXIT_SUCCESS;
}


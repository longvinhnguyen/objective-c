//
//  main.c
//  Triangle
//
//  Created by Long Vinh Nguyen on 10/18/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>

float remainingAngle (float firstAngle, float secondAngle) {
    float remainedAngle = 180 - firstAngle - secondAngle;
    return remainedAngle;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n",angleC);
    return 0;
}


//
//  main.c
//  Addresses
//
//  Created by Long Vinh Nguyen on 10/19/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartersianToPolar(float x, float y, double *rPtr, double *thetaPtr) {
    *rPtr = sqrt(x * x + y * y);
    
    float theta;
    if (x == 0) {
        if (y == 0) {
            theta = 0;
        } else if (y > 0) {
            theta = M_2_PI;
        } else theta = M_2_PI;
    } else theta = atan(y/x);
    *thetaPtr = theta;
}

int main(int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n",addressOfI);

    printf("this function is start at %p\n",main);
    printf("i stores its value at %d\n",*addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n",*addressOfI);

    printf("Ant int is %zu bytes\n",sizeof(int));
    printf("Ant pointer is %zu bytes\n",sizeof(addressOfI));
    
    printf("An float is %zu bytes\n",sizeof(float));
    
    double n = 3.14;
    double *integerPart  = &n;
    double fractionPart;
    
    fractionPart = modf(n, integerPart);

    printf("integerPart = %.0f, fractionPart = %.2f\n",*integerPart,fractionPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartersianToPolar(x, y, &radius, &angle);
    printf("%.2f, %.2f becomes %.2f,%.2f\n",x,y,radius,angle);
    return 0;
}


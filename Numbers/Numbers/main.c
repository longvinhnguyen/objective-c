//
//  main.c
//  Numbers
//
//  Created by Long Vinh Nguyen on 10/18/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{

    long x = -255;
    printf("x is %ld\n",x);
    printf("In octal, x is %lo\n",x);
    printf("In hecxadecimal, x is %lx\n",x);
    printf("The absolute value of -5 is %d\n",abs(5));
    printf("The absolute value of %ld is %ld\n",x,labs(x));

    double y = 12345.6789;
    printf("y is %.2f\n",y);
    printf("y is %.2e\n",y);
    printf("sine of 1 radian = %.3f",sin(1));
    return 0;
}


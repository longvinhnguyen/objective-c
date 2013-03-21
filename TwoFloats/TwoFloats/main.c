//
//  main.c
//  TwoFloats
//
//  Created by Long Vinh Nguyen on 10/18/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{

    float number1;
    float number2;
    number1 = 3.14;
    number2 = 42.0;
    
    double sum;
    sum = number1 + number2;
    
    printf("This is the sum of %1.f and %2.f: %3.f\n",number1,number2,sum);
    
    int i = 20;
    int j = 25;
    int k = (i>j) ? 10 : 5;
    
    if (5<j-k) {
        printf("The first expression is true\n");
    } else if (j>i) {
        printf("The second expression is true\n");
    } else printf("Neither expression is true\n");
    
    //Chapter 14
    char *lament = "Why me!?";
    char *x;
    asprintf(&x, "The best number is %d",5);

    size_t charCount = strlen(x);
    if (strcmp(lament,x) == 0) printf("%s and %s are equal\n",lament,x);
    printf("x length is %lu",charCount);
    free(x);
    
    return 0;
}


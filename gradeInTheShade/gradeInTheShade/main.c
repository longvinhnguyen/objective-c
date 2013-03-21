//
//  main.c
//  gradeInTheShade
//
//  Created by Long Vinh Nguyen on 10/31/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float averageFloats(float data[], int dataCount)
{
    float sum = 0.0;
    for (int i =0; i<dataCount; i++) {
        sum += data[i];
    }
    return sum/dataCount;
}

int main(int argc, const char * argv[])
{
    float gradeBook[3] = {60.2, 94.5, 81.1};
    
    
    float average = averageFloats(gradeBook, 3);
    
    //free(gradeBook);
    //gradeBook = NULL;
    
    printf("Average = %.2f\n",average);
    
    return 0;
    
}


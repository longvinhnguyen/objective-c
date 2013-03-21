//
//  main.c
//  BMICalc
//
//  Created by Long Vinh Nguyen on 10/19/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>
#include <time.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex (Person p) {
    return p.weightInKilos / (p.heightInMeters*p.heightInMeters);
}


void whatDateItWillBe(long secs, struct tm *future) {
    long startTime = time(NULL);
    long futureTime = startTime + secs;
    localtime_r(&futureTime,future);
    
}


int main(int argc, const char * argv[])
{
    Person person;
    person.heightInMeters = 1.7;
    person.weightInKilos = 58;
    printf("person weighs %d kilograms\n",person.weightInKilos);
    printf("person is %.2f meters tall\n",person.heightInMeters);
    printf("person has a BMI of %.2f\n",bodyMassIndex(person));
    
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n",secondsSince1970);
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is  %d:%d:%d\n",now.tm_mon+1, now.tm_mday, now.tm_year+1900);
    
    long timeAdd = 4000000;
    struct tm dayWillBe;
    whatDateItWillBe(timeAdd, &dayWillBe);
    printf("The date in 4 million seconds is %d-%d-%d",dayWillBe.tm_mday, dayWillBe.tm_mon+1, dayWillBe.tm_year+1900);
    
    float *a = malloc(10000 * sizeof(float));
    free(a);
    
    
    
    return 0;
}


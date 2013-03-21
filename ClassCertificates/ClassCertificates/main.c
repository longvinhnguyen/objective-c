//
//  main.c
//  ClassCertificates
//
//  Created by Long Vinh Nguyen on 10/18/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void congratulateStudent(char *student, char *course, int numDays) {
    printf("%s has done as %s Programming as I could fit into %d.\n",student,course,numDays);
}

void showCookTimeForTurkey(int pounds) {
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
}

int main(int argc, const char * argv[])
{

    congratulateStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Mike", "Python", 5);
    sleep(2);
    congratulateStudent("Ted", "iOS", 5);
    sleep(2);
    
    int totalWeight = 10;
    int gibletWeight = 1;
    int turkeyWeight = totalWeight - gibletWeight;
    showCookTimeForTurkey(turkeyWeight);
    
    return 0;
    
}


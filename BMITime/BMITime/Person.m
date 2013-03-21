//
//  Person.m
//  BMITime
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize heightInMeters,weightInKilos;

-(float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos]/(h*h);
}

-(void) addYourselfToArray : (NSMutableArray *)theArray
{
    [theArray addObject:self];
}

@end

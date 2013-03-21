//
//  Person.h
//  BMITime
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    float heightInMeters;
    int weightInKilos;
    
    
}

@property float heightInMeters;
@property int weightInKilos;

-(float) bodyMassIndex;
-(void) addYourselfToArray : (NSMutableArray *)theArray;


@end

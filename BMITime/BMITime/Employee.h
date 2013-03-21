//
//  Employee.h
//  BMITime
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
}

@property int employeeID;

-(void) addAssetObject: (Asset *)a;
-(NSMutableArray *)assets;
-(unsigned int) valueOfAssets;

@end

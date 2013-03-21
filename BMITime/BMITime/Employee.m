//
//  Employee.m
//  BMITime
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee
@synthesize employeeID;

-(float) bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

-(void) addAssetObject:(Asset *)a
{
    if(!assets) {
        assets = [[NSMutableSet alloc]init];
    }
    [assets addObject:a];
    [a setHolder: self];
}

-(unsigned int) valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: %d in assets",[self employeeID],[self valueOfAssets]];
}

-(void)dealloc
{
    NSLog(@"deallocating %@",self);
}

-(NSMutableArray *)assets
{
    return [assets copy];
}

@end

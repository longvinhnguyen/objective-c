//
//  Appliance.m
//  Appliances
//
//  Created by Long Vinh Nguyen on 10/28/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance
@synthesize voltage;

-(id)initWithProductName:(NSString *)pn
{
    self = [super init];
    if(self) {
        [self setVoltage:120];
        productName = [pn copy];
    }
    
    return  self;
}

-(id)init
{
    return [self initWithProductName:@"Unknow"];
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>",productName,voltage];
}

-(void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d",x);
    voltage = x;
}


@end

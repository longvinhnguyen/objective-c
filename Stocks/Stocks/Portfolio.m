//
//  Portfolio.m
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

@synthesize name;

-(void) addShareHolder:(StockHolding *)sh
{
    if (!shareholders) {
        shareholders = [[NSMutableArray alloc]init];
    }
    [shareholders addObject:sh];
}

-(float)currentValue
{
    int currentValue = 0;
    for (StockHolding *s in shareholders) {
        currentValue += [s valueInDollars];
    }
    return currentValue;
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@>",[self name]];
}

-(void)dealloc
{
    NSLog(@"deallocating %@",self);
}


@end

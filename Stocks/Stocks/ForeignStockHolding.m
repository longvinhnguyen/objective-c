//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

-(float) costInDollars
{
    return [self purchasedSharePrice] * [self conversionRate];
}

-(float) valueInDollars
{
    return [self currentSharePrice] * [self conversionRate];
}

@end

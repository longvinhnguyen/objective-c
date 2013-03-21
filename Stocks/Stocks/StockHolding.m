//
//  StockHolding.m
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding
@synthesize currentSharePrice,purchasedSharePrice,numberOfShares;

-(float) costInDollars
{
    return [self purchasedSharePrice] * [self numberOfShares];
}

-(float) valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}



@end

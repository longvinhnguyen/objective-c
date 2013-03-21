//
//  StockHolding.h
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchasedSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchasedSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float) costInDollars;
-(float) valueInDollars;


@end

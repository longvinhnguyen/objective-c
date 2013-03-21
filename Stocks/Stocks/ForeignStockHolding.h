//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;

@end

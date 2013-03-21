//
//  Portfolio.h
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject

{
    NSString *name;
    NSMutableArray *shareholders;
}

@property (strong) NSString *name;

-(void) addShareHolder: (StockHolding *)sh;
-(float) currentValue;

@end

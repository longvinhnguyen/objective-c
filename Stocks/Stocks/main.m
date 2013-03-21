//
//  main.m
//  Stocks
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *shareHolder1 = [[StockHolding alloc]init];
        StockHolding *shareHolder2 = [[StockHolding alloc]init];
        StockHolding *shareHolder3 = [[StockHolding alloc]init];
        
        [shareHolder1 setPurchasedSharePrice:2.30];
        [shareHolder1 setCurrentSharePrice:4.50];
        [shareHolder1 setNumberOfShares:40];
        
        [shareHolder2 setPurchasedSharePrice:12.19];
        [shareHolder2 setCurrentSharePrice:10.56];
        [shareHolder2 setNumberOfShares:90];
        
        [shareHolder3 setPurchasedSharePrice:45.10];
        [shareHolder3 setCurrentSharePrice:49.51];
        [shareHolder3 setNumberOfShares:210];
        
        NSMutableArray *holders = [NSMutableArray arrayWithObjects:shareHolder1,shareHolder2,shareHolder3, nil];
        
       
        
        ForeignStockHolding *fHolder1 = [[ForeignStockHolding alloc]init];
        ForeignStockHolding *fHolder2 = [[ForeignStockHolding alloc]init];
        
        [fHolder1 setConversionRate:1/20.890];
        [fHolder2 setConversionRate:1/20.890];
        
        [fHolder1 setPurchasedSharePrice:19000.00];
        [fHolder1 setCurrentSharePrice:27000.00];
        [fHolder1 setNumberOfShares:500];
        
        [fHolder2 setPurchasedSharePrice:90000.00];
        [fHolder2 setCurrentSharePrice:82000.70];
        [fHolder2 setNumberOfShares:200];
        
        [holders addObject:fHolder1];
        [holders addObject:fHolder2];
        
        for (StockHolding *holder in holders) {
            NSLog(@"Cost in Dollars: %.2f and Value in Dollars: %.2f",[holder costInDollars],[holder valueInDollars]);
        }
        
        Portfolio *p = [[Portfolio alloc]init];
        [p setName:@"Apple Inc"];
        [p addShareHolder:shareHolder1];
        [p addShareHolder:shareHolder2];
        [p addShareHolder:shareHolder3];
        [p addShareHolder:fHolder1];
        [p addShareHolder:fHolder2];
        NSLog(@"The current value of this portfolio is %.2f",[p currentValue]);

        p = nil;




    }
    return 0;
}


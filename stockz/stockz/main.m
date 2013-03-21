//
//  main.m
//  stockz
//
//  Created by Long Vinh Nguyen on 10/26/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSURL *url = [NSURL URLWithString:@"http://www.cs.odu.edu/~ibl/public/colloquium/fall97/page.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:NULL];
        
        NSMutableDictionary *stock = [[NSMutableDictionary alloc]init];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stock setObject:[NSNumber numberWithFloat:80.09] forKey:@"float"];
        [stock setObject:[NSDate date] forKey:@"Today"];
        

        //[stock setObject:b1 forKey:@"Boolean"];
        [stock setObject:data forKey:@"Data"];
        [stock setObject:[NSNumber numberWithBool:YES] forKey:@"BOOL"];
        
        
        [stocks addObject:stock];
        
        //NSLog(@"%@",stock);
        
       
        
        [stocks writeToFile:@"/tmp/stocks.pList" atomically:YES];
        
        NSArray *stockList = [[NSArray alloc]initWithContentsOfFile:@"/tmp/stocks.pList"];
        NSLog(@"%@",stockList);
//        for (NSDictionary *d in stockList) {
//            
//            NSLog(@"I have %@ shares of %@",[d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
//        }
        
        
    }
    
    return 0;
}


//
//  main.m
//  VowelCounter
//
//  Created by Long Vinh Nguyen on 10/28/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *string = @"Long";
        NSLog(@"%@ has %d vowels",string,[string vowelCount]);
        
    }
    return 0;
}


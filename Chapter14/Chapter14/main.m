//
//  main.m
//  Chapter14
//
//  Created by Long Vinh Nguyen on 10/20/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *lament = @"Why me!";
        NSLog(@"The date is %@",lament);
        
        NSString *x = [NSString stringWithFormat:@"The beas number is %d",5];
        NSUInteger charCount = [x length];
        NSLog(@"x length is %lu",charCount);
        if ([lament isEqual:x]) NSLog(@"%@ and %@ are equal",lament,x);
        
        //Challenge: My computer's name
        NSHost *host = [NSHost currentHost];
        NSString *computerName = [host localizedName];
        NSLog(@"The name of my computer is %@",computerName);
        
    }
    return 0;
}


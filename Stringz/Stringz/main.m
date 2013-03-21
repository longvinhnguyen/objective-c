//
//  main.m
//  Stringz
//
//  Created by Long Vinh Nguyen on 10/23/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSMutableString *str = [[NSMutableString alloc]init];
//        
//        for (int i = 0;i<10;i++) {
//            [str appendString:@"Long is Cool!!!!\n"];
//        }
//        
        NSError *error = nil;
//        
//        BOOL success = [str writeToFile:@"/too/darned.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else NSLog(@"writing /tmp/cool.txt failed %@",error);
//        
//        NSLog(@"done writing /tmp/cool.txt");
        
        NSString *str = [[NSString alloc]initWithContentsOfFile:@"/darned/cool.txt" encoding:NSUTF8StringEncoding error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else NSLog(@"resolv.conf looks like this: %@",str);
        
    }
    return 0;
}


//
//  main.m
//  DateList
//
//  Created by Long Vinh Nguyen on 10/20/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24*60*60];
        
//        NSArray *dateList = [NSArray arrayWithObjects:now,tomorrow,yesterday, nil];
//        
//        NSLog(@"There are %lu dates",[dateList count]);
//        
//        NSLog(@"The first date is %@",[dateList objectAtIndex:0]);
//        NSLog(@"The third date is %@",[dateList objectAtIndex:2]);
        
//        for (int i = 0; i< [dateList count]; i++) {
//            NSDate *d = [dateList objectAtIndex:i];
//            NSLog(@"Here is the date: %@",d);
//        }
//        for (NSDate *d in dateList) {
//            NSLog(@"Here is the date: %@",d);
//        }
        
        //MutableArray
        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date: %@",d);
        }
        
        NSLog(@"Now the first date is %@",[dateList objectAtIndex:0]);
        
        //Challenge Chapter 15
        NSString *apple = @"Apple";
        NSString *orange = @"Orange";
        NSString *watermelon = @"Watermelon";
        NSString *cucumber = @"Cucumber";
        
        NSMutableArray *groceryList = [NSMutableArray arrayWithObjects:apple,orange,watermelon,cucumber, nil];
        for (NSString *item in groceryList) {
            NSLog(@"The item is %@",item);
        }
        
        
        //Challenge Chapter 15 next
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSLog(@"List Common Proper Names-------------------");
        for (NSString *n in names) {

            NSLog(@"%@",n);
            //NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
//            
//            if (r.location != NSNotFound) {
//                NSLog(@"%@",n);
//            }
            
        }
                NSLog(@"List Common Proper Names-------------------");
        //Challenge Chapter 15 next next
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (NSString *word in words) {
            NSRange r1 = [word rangeOfString:@"A"];
            NSRange r2 = [word rangeOfString:@"B"];
            NSRange r26 = [word rangeOfString:@"C"];
            NSRange r3 = [word rangeOfString:@"D"];
            NSRange r4 = [word rangeOfString:@"E"];
            NSRange r5 = [word rangeOfString:@"F"];
            NSRange r6 = [word rangeOfString:@"G"];
            NSRange r7 = [word rangeOfString:@"H"];
            NSRange r8 = [word rangeOfString:@"I"];
            NSRange r9 = [word rangeOfString:@"J"];
            NSRange r10 = [word rangeOfString:@"K"];
            NSRange r11 = [word rangeOfString:@"L"];
            NSRange r12 = [word rangeOfString:@"M"];
            NSRange r13 = [word rangeOfString:@"O"];
            NSRange r14 = [word rangeOfString:@"N"];
            NSRange r15 = [word rangeOfString:@"P"];
            NSRange r16 = [word rangeOfString:@"Q"];
            NSRange r17 = [word rangeOfString:@"R"];
            NSRange r18 = [word rangeOfString:@"S"];
            NSRange r19 = [word rangeOfString:@"T"];
            NSRange r20 = [word rangeOfString:@"U"];
            NSRange r21 = [word rangeOfString:@"V"];
            NSRange r22 = [word rangeOfString:@"W"];
            NSRange r23 = [word rangeOfString:@"Y"];
            NSRange r24 = [word rangeOfString:@"X"];
            NSRange r25 = [word rangeOfString:@"Z"];
            if(r1.location == NSNotFound && r2.location == NSNotFound && r3.location == NSNotFound && r4.location == NSNotFound && r5.location == NSNotFound && r6.location == NSNotFound && r7.location == NSNotFound && r8.location == NSNotFound && r9.location == NSNotFound && r10.location == NSNotFound && r11.location == NSNotFound &&r12.location == NSNotFound && r13.location == NSNotFound && r14.location == NSNotFound && r15.location == NSNotFound && r16.location == NSNotFound && r17.location == NSNotFound && r18.location == NSNotFound && r19.location == NSNotFound && r20.location == NSNotFound && r21.location == NSNotFound && r22.location == NSNotFound && r23.location == NSNotFound && r24.location == NSNotFound && r25.location == NSNotFound && r26.location == NSNotFound)
             {
            
                   for (NSString *commonProperNames in names) {
                       if ([word caseInsensitiveCompare:commonProperNames] == NSOrderedSame)
                           NSLog(@"%@ and %@: Found",word,commonProperNames);

                   }
            
             }
        
        }
                
    return 0;
    
    }
}

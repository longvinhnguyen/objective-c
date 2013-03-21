//
//  main.m
//  TimeAfterTime
//
//  Created by Long Vinh Nguyen on 10/20/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc]init];
        NSLog(@"The new date lives at %@",now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);
        
        //Date of birth
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1988];
        [comps setMonth:7];
        [comps setDay:6];
        [comps setHour:17];
        [comps setMinute:6];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsFromBirth = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Seconds I have been alive %.0f seconds",secondsFromBirth);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                        forDate:now];
        
        NSLog(@"This is day %lu of the month",day);
        
        NSUInteger hour = [cal ordinalityOfUnit:NSHourCalendarUnit inUnit:NSYearCalendarUnit forDate:now];
        
        NSLog(@"This is hour %lu of the year",hour);
        
        NSTimeZone *tz = [NSTimeZone systemTimeZone];
        BOOL isDayLight = [tz isDaylightSavingTime];
        NSLog(@"The current time zone of this application is in day light saving time?: %@",isDayLight?@"Yes":@"No");
        
        
        
        
    }
    return 0;
}


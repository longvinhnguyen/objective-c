//
//  Logger.m
//  CallBacks
//
//  Created by Long Vinh Nguyen on 10/26/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes",[data length]);
    
    if (!incommingData)
    {
        incommingData = [[NSMutableData alloc]init];
    }
    [incommingData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURL *)connection
{
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc]initWithData:incommingData encoding:NSUTF8StringEncoding];
    incommingData = nil;
    
    NSLog(@"string has %lu characters", [string length]);
    
    NSLog(@"The whole string is %@",string);
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed %@",[error localizedDescription]);
    incommingData = nil;
}

-(void)zoneChange:(NSNotificationCenter *)nc
{
    NSLog(@"The system time zone has changed");
}

@end

//
//  main.m
//  CallBacks
//
//  Created by Long Vinh Nguyen on 10/26/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc]init];
        
        //[[NSNotificationCenter defaultCenter]addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        void(^zoneChange)(NSNotification* ) = ^(NSNotification *ns){NSLog(@"The system time zone has changed");};
        
        [[NSNotificationCenter defaultCenter]addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:zoneChange];
        
        
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.cs.odu.edu/~ibl/public/colloquium/fall97/page.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc]initWithRequest:request delegate: logger startImmediately:YES];
        
//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(sayOuch:) userInfo:nil repeats:YES];
        
        
        [[NSRunLoop currentRunLoop]run];
        
    }
    return 0;
}


//
//  Logger.h
//  CallBacks
//
//  Created by Long Vinh Nguyen on 10/26/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incommingData;
}

-(void)sayOuch:(NSTimer *)t;
-(void)zoneChange:(NSNotificationCenter *)nc;

@end

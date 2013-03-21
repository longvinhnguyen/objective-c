//
//  Asset.h
//  BMITime
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
    
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;


@end

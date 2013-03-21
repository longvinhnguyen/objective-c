//
//  Appliance.h
//  Appliances
//
//  Created by Long Vinh Nguyen on 10/28/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *productName;
    int voltage;
}
//@property (copy,nonatomic) NSString *productName;
@property (nonatomic) int voltage;

//The desingated initializer
-(id)initWithProductName:(NSString *)pn;

@end

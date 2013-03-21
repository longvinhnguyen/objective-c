//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Long Vinh Nguyen on 10/28/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
    NSMutableSet *ownerNames;
}

//The desingated initializer
-(id)initWithProductName:(NSString *)pn
           firstOwerName:(NSString *)n;

-(void)addOwnerNamesObject:(NSString *)n;
-(void)removeOwnerNamesObject:(NSString *)n;


@end

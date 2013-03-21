//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Long Vinh Nguyen on 10/28/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance



-(id)initWithProductName:(NSString *)pn firstOwerName:(NSString *)n
{
    self = [super initWithProductName:pn];
    
    if(self){
        ownerNames = [[NSMutableSet alloc]init];
    }
    
    if(n){
        [ownerNames addObject:n];
    }
    return self;
}

-(void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

-(void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

-(id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwerName:nil];
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts owner: %@>",productName,voltage,ownerNames];
}

-(id)init
{
    @throw [NSException exceptionWithName:@"OwnedAppliane Initializer" reason:@"use initWithProductNamefirstOwnerName: ,not init" userInfo:nil];
}

@end

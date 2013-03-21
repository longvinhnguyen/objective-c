//
//  main.m
//  Appliances
//
//  Created by Long Vinh Nguyen on 10/28/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"
#import "OwnedAppliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc]init];
        NSLog(@"%@",a);
        //[a setProductName:@"Washing Machine"];
        [a setValue:@"Washing Machine" forKey:@"productName"];
        //[a setVoltage:240];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"%@",a);
        
        OwnedAppliance *oap = [[OwnedAppliance alloc]initWithProductName:@"Macbook Pro Retina" firstOwerName:@"Long Nguyen"];
        NSLog(@"%@",oap);
        
        NSNumber *volt = [a valueForKey:@"voltage"];
        NSLog(@"%@",volt);
        
//        OwnedAppliance *oap2 = [[OwnedAppliance alloc]init];
//        NSLog(@"%@",oap2);
        
        
        
    }
    return 0;
}


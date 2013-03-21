//
//  main.m
//  BMITime
//
//  Created by Long Vinh Nguyen on 10/21/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Person.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Employee *person = [[Employee alloc]init];
//        
//        [person setHeightInMeters:1.7];
//        [person setWeightInKilos:58];
//        [person setEmployeeID:15];
//        
//        float bmi = [person bodyMassIndex];
//        NSLog(@"person (%d,%.2f) has a BMI of %f",[person weightInKilos],[person heightInMeters],bmi);
//        NSLog(@"Employee %d has a BMI of %.2f",[person employeeID],bmi);
        

        NSMutableArray *employees = [[NSMutableArray alloc]init];
        //Create NSMutableDictionary
        NSMutableDictionary *excutives = [[NSMutableDictionary alloc]init];
        
        for (int i= 0; i< 10; i++) {
            Employee *person = [[Employee alloc]init];
            
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            [employees addObject:person];
            
            if (i == 0) {
                [excutives setObject:person forKey: @"CEO"];
            } else if (i == 1)[excutives setObject:person forKey: @"CIO"];
            
        }
        
        //NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        for (int i = 0;i< 10; i++) {
            Asset *asset = [[Asset alloc]init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:17*i];
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssetObject:asset];
            //[allAssets addObject:asset];
            
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa,ei, nil]];
        
        NSLog(@"Employees: %@",employees);
        
//        Employee *empTemp;
//        empTemp = [employees objectAtIndex:5];
        

        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];

        
//        NSLog(@"allAssets: %@",allAssets);
//        NSLog(@"%d",[allAssets containsObject:newSurface]?YES:NO);
//        NSLog(@"%d",YES);
//
       NSLog(@"Giving up ownership of array");
        
        NSLog(@"Executives: %@",excutives);
        excutives = nil;
        
//        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
//        NSArray *tobeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
//        NSLog(@"tobeReclaimed: %@",tobeReclaimed);
        
        //allAssets = nil;
        
        employees = nil;
        
      

        
        

    }
    //sleep(100);
    return 0;
}


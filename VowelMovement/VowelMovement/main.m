//
//  main.m
//  VowelMovement
//
//  Created by Long Vinh Nguyen on 10/29/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *oldString = [NSArray arrayWithObjects:@"Sauerkraut",@"Mississipi",@"RayGun",@"Big Nerd Ranch",nil];
        NSLog(@"old string: %@",oldString);
        
        __weak __block id newString;
        printf("newString address: %p\n",newString);
        
        NSMutableArray *newStrings = [[NSMutableArray alloc]init];
        
        
        NSArray *vowel = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u",nil];
        
        void (^devowellizer)(id,NSUInteger,BOOL *);
        devowellizer = ^(id string, NSUInteger i, BOOL *stop){
            NSMutableString *weak = [[NSMutableString alloc]initWithString:string];
            
            newString = weak;
            
            printf("newString address: %p\n",newString);
            printf("weak address: %p\n",weak);
            
            for (NSString *s in vowel) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [newStrings addObject:newString];
            
        };
               
        [oldString enumerateObjectsUsingBlock:devowellizer];
        NSLog(@"new String: %@",newStrings);
        
    }
    return 0;
}


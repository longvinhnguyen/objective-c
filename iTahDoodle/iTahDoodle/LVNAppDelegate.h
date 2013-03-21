//
//  LVNAppDelegate.h
//  iTahDoodle
//
//  Created by Long Vinh Nguyen on 10/27/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import <UIKit/UIKit.h>


NSString *docPath(void);

@interface LVNAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>


{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

@property (strong, nonatomic) UIWindow *window;

-(void) addTask:(id) sender;


@end

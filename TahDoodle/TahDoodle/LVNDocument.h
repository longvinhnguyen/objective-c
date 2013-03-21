//
//  LVNDocument.h
//  TahDoodle
//
//  Created by Long Vinh Nguyen on 10/27/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LVNDocument : NSDocument <NSTableViewDataSource>
{
    IBOutlet NSTableView *itemViewTable;
    NSMutableArray *todoItems;
}

-(IBAction)createNewItem:(id)sender;
-(IBAction)deleteItem:(id)sender;

@end

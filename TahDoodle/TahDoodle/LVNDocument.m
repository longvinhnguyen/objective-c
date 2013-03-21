//
//  LVNDocument.m
//  TahDoodle
//
//  Created by Long Vinh Nguyen on 10/27/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#import "LVNDocument.h"

@implementation LVNDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"LVNDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    if(!todoItems){
        todoItems = [NSMutableArray array];
    }
    NSError *error = nil;
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems format:NSPropertyListXMLFormat_v1_0 options:0 error:&error];
    if(!data)
    {
        NSLog(@"Read Failed %@",[error localizedDescription]);
    } else {
        
        NSLog(@"Document should look like this: %@", todoItems);
    }
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSError *error = nil;
    todoItems = [NSPropertyListSerialization propertyListWithData:data options:0 format:NULL error:&error];
    if(!todoItems)
    {
        NSLog(@"Read Failed %@",[error localizedDescription]);
    } else {

        NSLog(@"Document should look like this: %@", todoItems);
    }
    return YES;
}

-(IBAction)createNewItem:(id)sender
{
    if(!todoItems) {
        todoItems = [NSMutableArray array];
    }
    [todoItems addObject:@"New Item"];
    
    [itemViewTable reloadData];
    
    [self updateChangeCount:NSChangeDone];
    
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [todoItems count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    return [todoItems objectAtIndex:row];
}

-(void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    [todoItems replaceObjectAtIndex:row withObject:object];
    [self updateChangeCount:NSChangeDone];
}

-(void)deleteItem:(id)sender
{
    [todoItems removeObjectAtIndex:[itemViewTable selectedRow]];
    [itemViewTable reloadData];
    [self updateChangeCount:NSChangeDone];
}






@end

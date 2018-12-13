//
//  AddressBook.m
//  AddressBook
//
//  Created by Kenneth Bambridge on 3/3/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize book = _book;
@synthesize bookName = _bookName;

-(id) initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        self.bookName = [NSString stringWithString: name];
        self.book = [NSMutableArray array];
    }
    
    return self;
}

-(id) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard: (AddressCard *) theCard
{
    [self.book addObject:theCard];
}

-(void) removeCard:(AddressCard *) theCard;
{
    [self.book removeObjectIdenticalTo:theCard];
}

-(AddressCard *) lookup: (NSString *) theName
{
    NSUInteger result = [self.book indexOfObjectPassingTest:
        ^ (id obj, NSUInteger idx, BOOL *stop)
        {
            if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame) {
                return YES;
            }
            else
                return NO;  //keep looking
        }];

    // See if we found a match

    if (result != NSNotFound) // there should be one element
        return self.book[result];
    else 
        return nil;
}
-(NSUInteger) entries
{
    return [self.book count];
}

-(void) list
{
    NSLog(@"========== Contents of: %@ ==========", self.bookName);
    for (AddressCard *card in self.book) {
        NSLog(@"%-20s   %-32s", [card.name UTF8String], [card.email UTF8String]);
    }
    
    NSLog(@"=====================================");
    
}

-(void) sort
{
    [self.book sortUsingComparator:^(id obj1, id obj2) {
        return [[obj1 name] compare: [obj2 name]];
    }];
}

-(AddressBook *) copyWithZone: (NSZone *) zone
{
    AddressBook *book = [[AddressBook alloc] initWithName:self.bookName];
    book.book = [self.book copy];
    return book;
}

@end

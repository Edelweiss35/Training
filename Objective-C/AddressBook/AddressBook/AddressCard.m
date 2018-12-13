//
//  AddressCard.m
//  AddressBook
//
//  Created by Kenneth Bambridge on 3/3/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name = _name;
@synthesize email = _email;


-(void) setName:(NSString *) theName andEmail: (NSString *) andEmail
{
    self.name = theName;
    self.email = andEmail;
}

-(void) print
{
		NSLog(@"=============================");
		NSLog(@"|                           |");
		NSLog(@"|  %-24s |", [self.name UTF8String]);
		NSLog(@"|  %-24s |", [self.email UTF8String]);
		NSLog(@"|                           |");
		NSLog(@"|                           |");
		NSLog(@"|                           |");
		NSLog(@"|      O            O       |");
		NSLog(@"=============================");
}

@end

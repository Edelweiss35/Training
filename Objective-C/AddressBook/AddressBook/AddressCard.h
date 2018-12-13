//
//  AddressCard.h
//  AddressBook
//
//  Created by Kenneth Bambridge on 3/3/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (void) print;

@end

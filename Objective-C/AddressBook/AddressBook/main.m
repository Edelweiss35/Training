//
//  main.m
//  AddressBook
//
//  Created by Kenneth Bambridge on 3/3/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString  *aName = @"Julia Kochan";
        NSString  *aEmail = @"jewls337@axlc.com";
        NSString  *bName = @"Tony Iannino";
        NSString  *bEmail = @"tony.iannino@techfitness.com";
        NSString  *cName = @"Stephen Kochan";
        NSString  *cEmail = @"steve@classroomM.com";
        NSString  *dName = @"Jamie Baker";
        NSString  *dEmail = @"jbaker@classroomM.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressBook  *myBook = [[AddressBook alloc]                           initWithName: @"Linda's Address Book"];
        AddressCard  *myCard;
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        NSLog (@"Lookup: Stephen Kochan");
        myCard = [myBook lookup: @"Stephen Kochan"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        [myBook removeCard: myCard];
        [myBook list];
        
        AddressBook *book2 = [myBook copy];
        
        [book2 list];
    }
    return 0;
}


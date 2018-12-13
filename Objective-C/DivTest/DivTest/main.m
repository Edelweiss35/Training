//
//  main.m
//  DivTest
//
//  Created by Kenneth Bambridge on 1/3/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int value1, value2;
        BOOL divisible;
        
        NSLog(@"Enter two integer values: ");
        scanf(" %i %i", &value1, &value2);
        
        divisible = ! (value1 % value2);
        if (divisible) {
            NSLog(@"%i is divisible by %i.", value1, value2);
        }
        else {
            NSLog(@"%i is not divisible by %i.", value1, value2);
        }
        
    }
    return 0;
}


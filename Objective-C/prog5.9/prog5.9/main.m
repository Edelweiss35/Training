//
//  main.m
//  prog5.9
//
//  Created by Kenneth Bambridge on 1/3/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

extern int gnumber;
int gnumber = 23;
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*
        int number, right_digit;
        BOOL isNegative;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        if (number < 0) {
            isNegative = YES;
            number = -number;
        }
        do {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        } while( number != 0);
        if (isNegative)
            NSLog(@"-");*/
        
                NSString *test = @"2";
                printf("%li", [test integerValue]);
        printf("%i", gnumber);
    }
    return 0;
}


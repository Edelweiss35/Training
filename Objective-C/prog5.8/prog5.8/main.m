//
//  main.m
//  prog5.8
//
//  Created by Kenneth Bambridge on 1/3/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number");
        scanf ("%i", &number);
        
        while ( number != 0)  {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
        
    }
    return 0;
}


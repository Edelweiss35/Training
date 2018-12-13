//
//  main.m
//  SumDigits
//
//  Created by Kenneth Bambridge on 1/3/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int number, digit, sum;
        
        NSLog(@"Enter an int: ");
        scanf("%i", &number);
        
        while (number != 0) {
            digit = number % 10;
            sum += digit;
            number /= 10;
        }
        
        NSLog(@"%i", sum);
        
    }
    return 0;
}


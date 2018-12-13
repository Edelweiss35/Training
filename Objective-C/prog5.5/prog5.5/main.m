//
//  main.m
//  prog5.5
//
//  Created by Kenneth Bambridge on 12/28/12.
//  Copyright (c) 2012 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int n, number, triangularNumber, counter;
        NSLog(@"How many triangle numbers would you like to calculate?");
        scanf ("%i", &counter);
        for ( ; counter > 0; --counter)
        {
            
            NSLog(@"What triangular number do you want?");
            scanf ("%i", &number);
            
            triangularNumber = 0;
            
            for (n = 1; n <= number; ++n)
                triangularNumber += n;
            
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
        
    }
    return 0;
}


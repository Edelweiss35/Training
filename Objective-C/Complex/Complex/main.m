//
//  main.m
//  Complex
//
//  Created by Kenneth Bambridge on 12/26/12.
//  Copyright (c) 2012 ClassroomM. All rights reserved.
//

#import "Complex.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Complex *num = [[Complex alloc] init];
        Complex *num2 = [[Complex alloc]init];
        
        num2.real = 5;
        num2.imaginary = 6;
        num.real = 3;
        num.imaginary = 4;
        
        int mag = pow(pow(num.real,2) + pow(num.imaginary, 2), .5);
        NSLog( @"The magnitude of:");
        [num print];
        NSLog(@"is %i", mag);
        
        Complex *result = [num add:num2];
        [result print];
        
        
    }
    return 0;
}


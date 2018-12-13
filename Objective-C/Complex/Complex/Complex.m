//
//  Complex.m
//  Complex
//
//  Created by Kenneth Bambridge on 1/8/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import "Complex.h"

@implementation Complex
{
    double real, imaginary;
}

- (double) real
{
    return real;
}

- (double) imaginary
{
    return imaginary;
}

- (void) setReal:(double)a
{
    real = a;
}

- (void) setImaginary:(double)b
{
    imaginary = b;
}

- (void) print
{
    NSLog(@"%f + j%f", real, imaginary);
}
-(Complex *) add:(Complex *)c
{
    Complex *result = [[Complex alloc]init];
    
    result.real = real + c.real;
    result.imaginary = imaginary + c.imaginary;
    
    return result;
}

@end

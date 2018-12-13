//
//  Complex.m
//  Complex
//
//  Created by Kenneth Bambridge on 1/8/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

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
-(id <Add>) addObj: (id <Add>) obj
{
    if ([obj isMemberOfClass:[Complex class]]){
        return [self add: obj];
    }
    else if ([obj isMemberOfClass:[Fraction class]]){
        Complex *comp = [[Complex alloc]init];
        [comp setReal:[(Fraction *)obj convertToNum]];
        return [self add: comp];
    }
    return nil;
}

@end

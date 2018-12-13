//
//  Fraction+Fraction_MathOps.m
//  FractionTest
//
//  Created by Kenneth Bambridge on 1/14/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f
{
    //To add two fractions, use formula:
    // a/b + c/d = (a * d + b * c)/(b * d)
    
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) subtract:(Fraction *)f
{
    //To subtract two fractions, use formula:
    // a/b - c/d = (a * d + b *  c)/(b * d)
    
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) multiply:(Fraction *)f
{
    //To multiply two fractions, simply
    //multiply numerators and denominators
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) divide:(Fraction *)f
{
    //To divide two fractions,
    //multiply by the reciprocal of the divisor
    
    Fraction *result = [[Fraction alloc] init];
    if (f.numerator) {
        result.numerator = self.numerator * f.denominator;
        result.denominator = self.denominator * f.numerator;
        [result reduce];
    }
    return result;
    
}
-(Fraction *) invert
{
    Fraction *invert = [[Fraction alloc]init];
    invert.numerator = self.denominator;
    invert.denominator = self.numerator;
    return invert;
}

@end

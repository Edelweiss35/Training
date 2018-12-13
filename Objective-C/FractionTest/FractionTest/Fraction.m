//
//  Fraction.m
//  FractionTest
//
//  Created by Kenneth Bambridge on 1/8/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Fraction+MathOps.h"
#import "Complex.h"

@implementation Fraction


typedef unsigned int Counter;
static Counter gAllocCounter;
static Counter gAddCounter;

@synthesize numerator, denominator = _denominator;

+(Fraction *) allocF
{
    extern Counter gAllocCounter;
    ++gAllocCounter;
    
    return [Fraction alloc];
}

+(int) allocCount
{
    extern Counter gAllocCounter; //not really necessary
    
    return gAllocCounter;
}
+(int) addCount
{
    extern Counter gAddCounter; //not really necessary
    return gAddCounter;
}
-(void) print
{   [self reduce];
    if (self.denominator < 1) {
        self.denominator = -self.denominator;
        self.numerator = -self.numerator;
    }
    
    if (self.numerator / self.denominator){
        int mixed = self.numerator/self.denominator;
        self.numerator = abs(self.numerator) - self.denominator;
        if (self.denominator == 1) NSLog(@"%i", mixed);
        else NSLog(@"%i %i/%i", mixed, self.numerator, self.denominator);
        return;
    }
    
    NSLog(@"%i/%i", self.numerator, self.denominator);
}
- (void) print: (BOOL) reduce
{
    Fraction *result;
    
    if (reduce) {
        result = [[Fraction alloc]init];
        [result setTo:self.numerator over:self.denominator];
        [result reduce];
    }
    else {
        result = self;
    }
    
    if (result.denominator < 1) {
        result.denominator = -result.denominator;
        result.numerator = -result.numerator;
    }
    
    if (result.numerator / result.denominator){
        int mixed = result.numerator/result.denominator;
        result.numerator = abs(result.numerator) - result.denominator;
        NSLog(@"%i %i/%i", mixed, result.numerator, result.denominator);
        return;
    }
    
    NSLog(@"%i/%i", result.numerator, result.denominator);
}
-(double) convertToNum
{
    return (self.denominator) ? (double) self.numerator/self.denominator : NAN;
}
-(void) setTo:(int)n over:(int)d
{
    self.numerator = n;
    self.denominator = d;
}
-(void) reduce
{
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    
    while (v) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.numerator /= u;
    self.denominator /= u;
}

-(id <Add>) addObj:(id<Add>)obj
{
    if ([obj isMemberOfClass:[Fraction class]]){
        return [self add: (Fraction *)obj];
    }
    else if ([obj isMemberOfClass:[Complex class]]){
        Complex *comp = [[Complex alloc]init];
        [comp setReal:[self convertToNum]];
        return [(Complex *)obj add: comp];
    }
    return nil;
}


@end
@interface Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f;
- (int) compare: (Fraction *) f;

@end

@implementation Fraction (Comparison)

-(BOOL) isEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    if (self.numerator == f.numerator && self.denominator == f.denominator)
        return YES;
    return NO;
}
-(int) compare:(Fraction *)f
{
    double f1 = [self convertToNum];
    double f2 = [f convertToNum];
    
    if (f1 < f2) return 1;
    if (f1 > f2) return -1;
    return 0;
}
@end



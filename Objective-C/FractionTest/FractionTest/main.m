//
//  main.m
//  FractionTest
//
//  Created by Kenneth Bambridge on 1/8/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Fraction+MathOps.h"
#import "Complex.h"

typedef enum {Sunday = 01, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday} Day;

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc]init];
        
        Complex *c1 = [[Complex alloc]init];
        Complex *c2 = [[Complex alloc]init];
        
        [c1 setReal:3];
        [c1 setImaginary: 4];
        
        [c2 setReal:6];
        [c2 setImaginary:25];
        
        id datavalue1 = f1;
        id datavalue2 = f2;
        //set fraction to 100/200
        
        [datavalue1 setTo:-100 over:200];
        [datavalue1 print:NO];
        
        datavalue1 = [f1 invert];
        //display the fraction
        [datavalue1 print];
        
        [datavalue2 setTo:150 over:879];
        [datavalue2 print:NO];
        
        id result = [datavalue1 addObj:datavalue2];
        [result print: NO];
        
        datavalue2 = c2;
        
        result = [datavalue1 addObj: datavalue2];
        [result print];
        
        datavalue1 = c1;
        
        result  =  [datavalue1 addObj: datavalue2];
        [result print];
        
        datavalue2 = f1;
        
        result = [datavalue1 addObj:datavalue2];
        [result print];
        
        /*Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc]init];
        id number = [[Complex alloc]init];
         
        [fraction isMemberOfClass:[Complex class]]; //NO
        [complex isMemberOfClass:[NSObject class]];//NO
        [complex isKindOfClass:[NSObject class]];//YES
        [fraction isKindOfClass:[Fraction class]];//YES
        [fraction respondsToSelector:@selector(print)];//YES
        [complex respondsToSelector:@selector(print)];//YES
        [Fraction instancesRespondToSelector:@selector(print)];//YES
        [number respondsToSelector:@selector(print)];//YES
        [number isKindOfClass:[Complex class]];//YES
        [[number class] respondsToSelector: @selector(alloc)];//YES*/
        Day day = Saturday;
        printf("%i", day);
    }
    return 0;
}


//
//  main.m
//  Calculator
//
//  Created by Kenneth Bambridge on 12/26/12.
//  Copyright (c) 2012 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

// arithmetic methods
- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;
- (double) changeSign;
- (double) reciprocal;
- (double) xSquared;
- (double) memClear;
- (double) memStore;
- (double) memRecall;
- (double) memAdd: (double) value;
- (double) memSub: (double) value;
@end

@implementation Calculator
{
    double accumulator;
    double memory;
}
- (void) setAccumulator: (double) value
{
    accumulator = value;
}
- (void) clear
{
    accumulator = 0;
}
- (double) accumulator
{
    return accumulator;
}

- (double) add:(double)value
{
    return accumulator += value;
}

- (double) subtract:(double)value
{
    return accumulator -= value;
}

- (double) multiply:(double)value
{
    return accumulator *= value;
}
-(double) divide:(double)value
{
    if (value == 0){
        NSLog( @"Err: Division by 0");
        return NAN;
    }
    return accumulator /= value;
}

-(double) changeSign;
{
    return accumulator = -accumulator;
}

- (double) reciprocal;
{
    return accumulator = 1 / accumulator;
}

- (double) xSquared;
{
    return accumulator *= accumulator;
}
- (double) memClear;
{
    memory = 0;
    return accumulator;
}
- (double) memStore;
{
    return memory = accumulator;
}
- (double) memRecall;
{
    return accumulator = memory;
}
- (double) memAdd:(double)value
{
    return accumulator = memory += value;
}
- (double) memSub:(double)value
{
    return accumulator = memory - value;
}
@end

@interface Calculator (Trig)

-(double)sin;
-(double) cos;
-(double) tan;
@end

@implementation Calculator (Trig)

-(double)sin
{
    return accumulator = sin(accumulator);
}
-(double)cos
{
    return accumulator = cos(accumulator);
}
-(double)tan
{
    return accumulator = tan(accumulator);
}
@end

#define MIN(x, y) (x > y) ? y : x
#define MAX3(x, y, z) (x> y) ? (x > z) ? x : (z > y) ? z : y : (y> z) ? y : z 

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        float number; char op;
        BOOL done = NO;
        
        Calculator *ti89 = [[Calculator alloc] init];
        NSLog(@"Begin Calculations.");
        
        
        while (!done) {
            scanf(" %f %c", &number, &op);
            
            switch (op) {
                case '+':
                    [ti89 add: number];
                    break;
                case '-':
                    [ti89 subtract:number];
                    break;
                case '*':
                    [ti89 multiply:number];
                    break;
                case '/':
                    [ti89 divide:number];
                    break;
                case 'S':
                    [ti89 setAccumulator: number];
                    break;
                case 'E':
                    NSLog(@"wtf");
                    done = YES;
                    break;
            default:
                    NSLog(@"Invalid operator, try again");
                    continue;
            }
            NSLog(@"= %f", [ti89 accumulator]);
        }
        NSLog(@"End of Calculations");
        
        
    }
    return 0;
}


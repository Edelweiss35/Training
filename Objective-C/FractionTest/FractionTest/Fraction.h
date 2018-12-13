//
//  Fraction.h
//  FractionTest
//
//  Created by Kenneth Bambridge on 1/8/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Add.h"

@interface Fraction : NSObject <Add, NSObject>
@property (nonatomic) int numerator, denominator;

+(Fraction *) allocF;
+(int) allocCount;
+(int) addCount;
- (void) print: (BOOL) reduced;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(id <Add>) addObj: (id <Add>) obj;
-(void) reduce;
@end



//
//  Fraction+Fraction_MathOps.h
//  FractionTest
//
//  Created by Kenneth Bambridge on 1/14/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) multiply: (Fraction*) f;
-(Fraction *) subtract:(Fraction *)f;
-(Fraction *) divide:(Fraction *)f;
-(Fraction *) invert;
@end

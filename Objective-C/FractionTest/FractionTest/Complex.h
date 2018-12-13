//
//  Complex.h
//  Complex
//
//  Created by Kenneth Bambridge on 1/8/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Add.h"

@interface Complex : NSObject <Add, NSObject>

@property (nonatomic) double real, imaginary;

- (void) print;
- (double) real;
- (double) imaginary;
- (Complex *) add: (Complex *) c;
- (id <Add>) addObj:(id<Add>)obj;

@end

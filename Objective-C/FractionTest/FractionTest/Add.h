//
//  Add.h
//  FractionTest
//
//  Created by Kenneth Bambridge on 1/10/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Add <NSObject>

@required
-(id <Add> ) addObj: (id <Add>) obj;
@end

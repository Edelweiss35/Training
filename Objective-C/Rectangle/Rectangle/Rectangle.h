//
//  Rectangle.h
//  Rectangle
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

-(id) initWithWidth: (int) w andHeight: (int) h;
- (void) setWidth: (int) w;
- (void) setHeight: (int) h;
- (int) width;
- (int) height;
- (int) area;
- (int) perimeter;
@end

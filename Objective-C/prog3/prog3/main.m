//
//  main.m
//  prog3
//
//  Created by Kenneth Bambridge on 12/22/12.
//  Copyright (c) 2012 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    	int numerator = 1;
        int denominator = 3;
        NSLog (@"The fraction is %i\%i", numerator, denominator);
    }    
    return 0;
}


/*
 * Object: Thermos
 *
 * Variables:
 * 	- fillPercent
 * 	- size
 * 	- liquid
 * 	- temperature
 *
 * Actions:
 * 	- [myThermos drink]
 * 	- [myThermos fillWith: toLevel:]
 * 	- [myThermos empty]
 * 	- [myThermos checkTemperature]
 * 	- [myThermos openCap]
 * 	- [myThermos closeCap]
 */

/*
 * dock
 * turn left
 * turn right
 * anchor
 * sail
 * slow down
 * repair
 * 
 * turn left
 * turn right
 * brake
 * gas
 * nitrous
 * start engine
 * repair
 * 
 * yes there is overlap
 *
 * yes it would allow you to conserve code, also it would keep the code more uniform
 *
 * disadvantages, because you would essential have to recreate the code to wash the vehicle, whereas you could just overload a superclass in object-oriented programming
 *
 * XYPoint
 *
 * - x
 * - y
 * - getPoint
 */

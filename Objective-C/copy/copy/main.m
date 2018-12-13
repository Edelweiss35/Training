//
//  main.m
//  copy
//
//  Created by Kenneth Bambridge on 3/8/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

  //  @autoreleasepool {
        
        NSFileManager *fm;
        NSString *dest;
        NSMutableArray *source = [[NSMutableArray alloc] init];
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];

        // Check for two arguments on the command line
        
        if ([args count] < 4) {
            NSLog (@"Usage: %@ src dest", [proc processName]);
            return 1;
        }
        
        for (int i = 1; i < [args count] - 1; i++) {
            [source addObject: args[i]];
        }
        dest = [args lastObject];
        
        // Check to make sure all source files exist
        
        for (NSString *file in source) {
            if ([fm isReadableFileAtPath: file] == NO) {
                NSLog (@"Can't read %@", file);
                return 2;
            }
        }
        
        // check if the destination file is a directory
        // if it is, add sources to end of destination and copy
        
        [fm fileExistsAtPath: dest isDirectory: &isDir];
        
        if (isDir == YES) {
            NSString *findest;
            for (NSString *file in source) {
                findest = [dest stringByAppendingPathComponent:
                           [file lastPathComponent]];
                [fm removeItemAtPath: findest error: NULL];
                if ([fm copyItemAtPath: file toPath: findest error: NULL] == NO) {
                    NSLog (@"Copy of %@ failed!", file);
                    return 3;
                }
            }
        }
        
        NSLog (@"Copy of items to %@ succeeded!", dest);

   // }
    return 0;
}


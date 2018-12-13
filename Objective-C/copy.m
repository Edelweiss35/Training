#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
    @autoreleasepool {
        NSFileManager *fm;
        NSString *dest;
        NSArray *source;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];

        fm = [NSFileManager defaultManager];

        // Check for two arguments on the command line

        if ([args count] < 4) {
            NSLog (@"Usage: %@ src dest", [proc processName]);
            return 1;
        }

        for (int i = 0; i < [args count] - 1; i++) {
            [source addObject: argv[i]];
        }
        dest = argv[[args count] - 1];

        // Check to make sure all source files exist

        for (NSString file in source) {
            if ([fm isReadableFileAtPath: file] == NO) {
                NSLog (@"Can't read %@", file);
                return 2;
            }
        }

        // check if the destination file is a directory
        // if it is, add sources to end of destination and copy

        [fm fileExistsAtPath: dest isDirectory: &isDir];

        if (isDir == YES) {
            NSString findest;
            for (NSString file in source) {
                findest = [dest stringByAppendingPathComponenet:
                    [file lastPathComponent]];
                [fm removeItemAtPath: findest error: NULL];
                if ([fm copyItemPath: file toPath: dest error: NULL] == NO) {
                    NSLog (@"Copy of %@ failed!", file);
                    return 3;
                }
            }
        }

        NSLog (@"Copy of items to %@ succeeded!", dest);
    } 
    return 0;
}

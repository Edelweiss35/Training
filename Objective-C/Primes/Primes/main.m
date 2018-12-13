//
//  main.m
//  Primes
//
//  Created by Kenneth Bambridge on 2/16/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int p[150], i;
        int n = 150;
        for (i = 2; i <= n; i++) {
            if (p[i] == 0)
                NSLog(@"%i", i);
            for (int j = 1; j*i <= n ; p[i*j++] = 1);
        }
        NSLog(@"does this work %@", @"doesthiswork");
        void (^exchange) (int  *s1, int *s2) = ^(int *s1, int *s2){
            int tmp = *s1;
            *s1 = *s2;
            *s2 = tmp;
        };
        
        int x = 9384;
        int y = 2;
        
        exchange(&x, &y);
        
        printf("x = %i, y = %i", x, y);

    }
    return 0;
}


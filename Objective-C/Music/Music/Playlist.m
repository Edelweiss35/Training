//
//  Playlist.m
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Playlist.h"

@interface Playlist ()


@end

@implementation Playlist

@synthesize playlist = _playlist;

static NSMutableArray *library;

-(id) initWithName:(NSString *)theName
{
    self = [super init];
    if (self)
    {
        self.playlist = [[NSMutableArray alloc]init];
        self.name = theName;
        [Playlist library];
    }
    return self;
}
+(NSMutableArray *) library
{
    if (!library)
    {
        library = [[NSMutableArray alloc] init];
    }
    return library;
}

-(void) addSong:(Song *)theSong
{
    if (theSong) {
        if (![self.playlist containsObject:theSong])
            [self.playlist addObject:theSong];
        if (![library containsObject:theSong])
            [library addObject:theSong];
    }
}

-(void) removeSong:(Song *)theSong
{
    if (theSong)
    {
        if ([self.playlist containsObject:theSong])
            [self.playlist removeObject:theSong];
    }
}

-(void) print
{
    NSLog(@"============= Playlist: %@ ==============", self.name);
    for (Song *song in self.playlist)
    {
        [song print];
    }
}

@end

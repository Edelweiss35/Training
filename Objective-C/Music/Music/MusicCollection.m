//
//  MusicCollection.m
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "MusicCollection.h"

@interface MusicCollection ()

@property (nonatomic, strong) NSMutableArray *collection;

@end

@implementation MusicCollection

@synthesize library = _library;

-(id) init
{
    self = [super init];
    if (self) {
        self.collection =  [[NSMutableArray alloc] init];
        if (!_library) {
            _library = [Playlist library];
        }
    }
    return self;
}
-(void) addPlaylist:(Playlist *)playlist
{
    [self.collection addObject:playlist];
}

-(Playlist *) lookup:(NSString *)playlistName
{
    for (Playlist *list in self.collection)
    {
        if ([list.name isEqualToString:playlistName])
        {
            NSUInteger index = [self.collection indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
                if ([[obj name] caseInsensitiveCompare:playlistName] == NSOrderedSame)
                    *stop = YES;
                return *stop;
            }];
            if (index != NSNotFound)
                return [self.collection objectAtIndex:index];
        }
    }
    return nil;
}

-(void) print
{
    NSLog(@"Music Collection: ");
    for (Playlist *list in self.collection){
        [list print];
    }
}

-(void) removeSong:(Song *)theSong
{
    [self.library removeObject:theSong];
    for (Playlist *list in self.collection)
    {
        [list removeSong:theSong];
    }
}

@end

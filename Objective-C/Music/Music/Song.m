//
//  Song.m
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Song.h"

@implementation Song

-(id) initWithTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andTime:(NSNumber *)theTime
{
    self = [super init];
    if (self) {
        [self setTitle:theTitle andArtist:theArtist andAlbum:theAlbum andTime:theTime];
    }
    
    return self;
}

-(void) setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andTime:(NSNumber *)theTime
{
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playingTime = theTime;
}

-(void) print
{
    NSLog(@"%@ by %@ in album %@.  Time: %@", self.title, self.artist, self.album, self.playingTime);
}
@end

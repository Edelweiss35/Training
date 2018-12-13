//
//  Song.h
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, copy) NSString *album;
@property (nonatomic) NSNumber *playingTime;

-(id) initWithTitle: (NSString *) theTitle andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum andTime: (NSNumber *) theTime;

-(void) setTitle: (NSString *) theTitle andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum andTime: (NSNumber *) theTime;

-(void) print;

@end

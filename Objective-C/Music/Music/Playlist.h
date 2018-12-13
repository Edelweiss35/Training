//
//  Playlist.h
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property (nonatomic) NSMutableArray *playlist;
@property (nonatomic, copy) NSString *name;

-(void) addSong: (Song *) theSong;
-(void) removeSong: (Song *) theSong;
-(void) removeSongWithName: (NSString *) theName andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum;
-(void) removeAlbum: (NSString *) theAlbum;
-(void) removeArtists: (NSString *) theArtist;

-(id) initWithName: (NSString *) theName;

+ (NSMutableArray * ) library;

-(NSArray *) songsWithKeyword: (NSString *) theName;
-(NSIndexPath *) songLookup: (NSString *) theTitle;
-(NSIndexPath *) albumLookup: (NSString *) theAlbum;
-(NSIndexPath *) artistLookup: (NSString *) theArtist;

-(void) print;

@end

//
//  MusicCollection.h
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"

@interface MusicCollection : NSObject

@property (nonatomic, readonly) NSMutableArray *library;

-(void) addPlaylist: (Playlist *) playlist;
-(void) removeSong: (Song *) theSong;

-(Playlist *) lookup: (NSString *) playlistName;

-(void) print;
@end

//
//  main.m
//  Music
//
//  Created by Kenneth Bambridge on 3/4/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MusicCollection.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Song *you = [[Song alloc]initWithTitle:@"You" andArtist:@"Breaking Benjamin" andAlbum:@"Phobia" andTime:@5.00];
        Song *scatta = [[Song alloc]initWithTitle:@"Scatta" andArtist:@"Skrillex" andAlbum:@"Various Skrillex" andTime:@3.00];
        
        Playlist *myPlaylist = [[Playlist alloc]initWithName:@"Rock"];
        [myPlaylist addSong:you];
        [myPlaylist addSong:scatta];
        
        MusicCollection *myMusic = [[MusicCollection alloc]init];
        [myMusic addPlaylist:myPlaylist];
        
        [myMusic print];
        
        [myMusic removeSong:scatta];
        
        [myMusic print];
        [myPlaylist print];
        
    }
    return 0;
}


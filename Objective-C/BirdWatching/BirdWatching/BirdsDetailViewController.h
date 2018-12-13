//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdsSighting;

@interface BirdsDetailViewController : UITableViewController

@property (strong, nonatomic) BirdsSighting *sighting;
@property (weak, nonatomic) IBOutlet UILabel *birdNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

@end

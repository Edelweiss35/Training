//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "BirdsDetailViewController.h"
#import "BirdsSighting.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

#pragma mark - Managing the detail item

-(void) setSighting:(BirdsSighting *) newSighting
{
    if(_sighting != newSighting)
    {
        _sighting = newSighting;
        
        //Update the view
        [self configureView];
    }
}

- (void)configureView
{
    
    BirdsSighting *sighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    // Update the user interface for the detail item.

    if (sighting) {
        self.birdNameLabel.text = sighting.name;
        self.locationLabel.text = sighting.location;
        self.dateLabel.text = [formatter stringFromDate: sighting.date]; //need cast?
    }
}

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewDidDisappear:(BOOL)animated
{
    self.sighting = nil;
    [super viewDidDisappear:animated];
}

@end

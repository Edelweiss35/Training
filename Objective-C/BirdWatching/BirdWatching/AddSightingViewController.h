//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by Kenneth Bambridge on 2/5/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddSightingViewControllerDelegate;

@interface AddSightingViewController : UITableViewController <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *birdName;
@property (weak, nonatomic) IBOutlet UITextField *location;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;
@end

@protocol AddSightingViewControllerDelegate <NSObject>

-(void) addSightingViewControllerDidCancel:(AddSightingViewController *) controller;
-(void) addSightingViewControllerDidFinish:(AddSightingViewController *) controller name: (NSString *) name location:(NSString *) location;


@end
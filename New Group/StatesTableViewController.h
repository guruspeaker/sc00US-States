//
//  StatesTableViewController.h
//  sc00US-States
//
//  Created by PAUL CHRISTIAN on 11/1/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "stateInfo.h"

@interface StatesTableViewController : UITableViewController
@property (strong,nonatomic) NSArray* state;
@property (strong, nonatomic) NSArray* capital;
@property (strong, nonatomic) NSArray* motto;
@property (strong, nonatomic) NSArray* flagSMFileName;
@property (strong, nonatomic) NSArray* flagLGFileName;
@property (strong, nonatomic) NSArray* birdPicFileName;
@property (strong, nonatomic) NSArray* bird;
@property (assign, nonatomic) NSArray* population;
@property (strong, nonatomic) stateInfo *stateDataPack;

@end

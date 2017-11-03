//
//  stateInfo.h
//  sc00US-States
//
//  Created by PAUL CHRISTIAN on 11/1/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> //need for UIImage

@interface stateInfo : NSObject
@property (strong,nonatomic) NSString* name;
@property (strong, nonatomic) NSString* capital;
@property (strong, nonatomic) NSString* motto;
@property (strong, nonatomic) UIImage* flagSM;
@property (strong, nonatomic) UIImage* flagLG;
@property (strong, nonatomic) UIImage* birdPic;
@property (strong, nonatomic) NSString* bird;
@property (assign, nonatomic) NSString* population;





@end

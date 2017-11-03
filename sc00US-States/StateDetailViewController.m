//
//  StateDetailViewController.m
//  sc00US-States
//
//  Created by PAUL CHRISTIAN on 11/1/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import "StateDetailViewController.h"

@interface StateDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgStateFlag;
@property (weak, nonatomic) IBOutlet UILabel *lblStateMotto;
@property (weak, nonatomic) IBOutlet UILabel *lblStateCapital;
@property (weak, nonatomic) IBOutlet UILabel *lblState;
@property (weak, nonatomic) IBOutlet UILabel *lblPopulation;
@property (weak, nonatomic) IBOutlet UIImageView *imgBird;
@property (weak, nonatomic) IBOutlet UILabel *lblBird;


@end

@implementation StateDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblState.text = self.myState.name;
    self.imgStateFlag.image = self.myState.flagSM;
    self.lblStateMotto.text = [NSString stringWithFormat:@"Motto: %@", self.myState.motto];
    self.lblStateCapital.text = self.myState.capital;
    self.lblBird.text = [NSString stringWithFormat:@"State Bird: %@", self.myState.bird];
    self.lblPopulation.text = [NSString stringWithFormat:@"Pop: %@", self.myState.population];
    self.imgBird.image = self.myState.birdPic;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

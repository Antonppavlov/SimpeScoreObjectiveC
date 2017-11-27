//
//  ThankYouViewController.m
//  SimpeScoreObjectiveC
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

#import "ThankYouViewController.h"
#import "Settings.h"

@interface ThankYouViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelTotalMoney;
@property (weak, nonatomic) IBOutlet UIButton *buttonBack;


@end

@implementation ThankYouViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _labelTotalMoney.text = [NSString stringWithFormat:@"%i", [Settings sharedSettings].totaMoney];
    
    [self.buttonBack addTarget:self action:@selector(pressButtonBack) forControlEvents:UIControlEventTouchUpInside];
}
-(void)pressButtonBack{
    [Settings sharedSettings].totaMoney=0;
}


@end


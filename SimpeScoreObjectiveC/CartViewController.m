//
//  CartViewController.m
//  SimpeScoreObjectiveC
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

#import "CartViewController.h"
#import "Settings.h"
//#import "ScoreViewController.m"

@interface CartViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelTotalMoney;
@property (weak, nonatomic) IBOutlet UIButton *buttonBack;
@property (weak, nonatomic) IBOutlet UIButton *buttonBuyItHere;

@end

@implementation CartViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _labelTotalMoney.text = [NSString stringWithFormat:@"%i", [Settings sharedSettings].totaMoney];
    
    [self.buttonBack addTarget:self action:@selector(pressButtonBack) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonBuyItHere addTarget:self action:@selector(pressButtonBuyItHere) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)pressButtonBack{
    
}
-(void)pressButtonBuyItHere{
    
}


@end


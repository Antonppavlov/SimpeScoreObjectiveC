//
//  ViewController.m
//  SimpeScoreObjectiveC
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

#import "ScoreViewController.h"
#import "Settings.h"



@interface ScoreViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonIphone;
@property (weak, nonatomic) IBOutlet UIButton *buttonMouse;
@property (weak, nonatomic) IBOutlet UIButton *buttonPS4;
@property (weak, nonatomic) IBOutlet UIButton *buttonCamera;
@property (weak, nonatomic) IBOutlet UIButton *buttonKeyboard;
@property (weak, nonatomic) IBOutlet UIButton *buttonNoteBook;


@property (weak, nonatomic) IBOutlet UILabel *labelTotalMoney;

@property (weak, nonatomic) IBOutlet UIButton *buttonAddToCart;
@property (weak, nonatomic) IBOutlet UIButton *buttonBuyNow;


@end


int intMoneyIphone = 60000;
int intMoneyMouse = 300;
int intMoneyPS4 = 25000;
int intMoneyCamera = 30000;
int intMoneyKeyboard = 2000;
int intMoneyNoteBook = 40000;


@implementation ScoreViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.labelTotalMoney.text = [NSString stringWithFormat:@"%i", [Settings sharedSettings].totaMoney];
    
    if([Settings sharedSettings].totaMoney==0){
        self.buttonAddToCart.userInteractionEnabled = NO;
        self.buttonBuyNow.userInteractionEnabled = NO;
        self.buttonAddToCart.alpha = 0.3;
        self.buttonBuyNow.alpha = 0.3;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.buttonIphone addTarget:self action:@selector(pressButtonIphone) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonMouse addTarget:self action:@selector(pressButtonMouse) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonPS4 addTarget:self action:@selector(pressButtonPS4) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonCamera addTarget:self action:@selector(pressButtonCamera) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonKeyboard addTarget:self action:@selector(pressButtonKeyboard) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonNoteBook addTarget:self action:@selector(pressButtonNoteBook) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonAddToCart addTarget:self action:@selector(pressButtonAddToCart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.buttonBuyNow addTarget:self action:@selector(pressButtonBuyNow) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void) pressButtonIphone{
    [self summ:intMoneyIphone];
}

- (void) pressButtonMouse{
    [self summ:intMoneyMouse];
}

- (void) pressButtonPS4{
    [self summ:intMoneyPS4];
}

- (void) pressButtonCamera{
    [self summ:intMoneyCamera];
}

- (void) pressButtonKeyboard{
    [self summ:intMoneyKeyboard];
}

- (void) pressButtonNoteBook{
    [self summ:intMoneyNoteBook];
}

- (void) pressButtonAddToCart{
}

- (void) pressButtonBuyNow{
}

-(void) summ:(int)money {
    [Settings sharedSettings].totaMoney = [Settings sharedSettings].totaMoney + money;
    
    NSString* myNewString = [NSString stringWithFormat:@"%i", [Settings sharedSettings].totaMoney];
    _labelTotalMoney.text = myNewString;
    
    self.buttonAddToCart.userInteractionEnabled = YES;
    self.buttonBuyNow.userInteractionEnabled = YES;
    self.buttonAddToCart.alpha = 1;
    self.buttonBuyNow.alpha = 1;
}


@end


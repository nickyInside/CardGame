//
//  CardGameViewController.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;

@end

@implementation CardGameViewController

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            [sender setTitle:@"A ♣︎" forState:UIControlStateNormal];
    }
}

@end

//
//  CardGameViewController.h
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardMatchingGame.h"
#import "Card.h"
#import "GameResult.h"

@interface CardGameViewController : UIViewController

- (CardMatchingGame*) createNewGame;
- (void)updateCardButton:(UIButton *)cardButton forCard:(Card *)card;
- (GameResult*) createGameResult;

@end

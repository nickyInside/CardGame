//
//  SetGameTest.m
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "SetGameTest.h"
#import "SetGame.h"
#import "SetCardDeck.h"

@implementation SetGameTest

- (void) testCreation
{
    SetGame* set = [[SetGame alloc] initWithCardCount: 24];
    STAssertNotNil(set, @"Set game should be initialized successfully");
}

@end

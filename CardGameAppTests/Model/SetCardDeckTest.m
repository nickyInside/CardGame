//
//  SetCardDeckTest.m
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "SetCardDeckTest.h"
#import "SetCardDeck.h"

@implementation SetCardDeckTest

- (void) testDeckCardCount
{
    SetCardDeck* deck = [[SetCardDeck alloc] init];
    STAssertEquals([deck.cards count], (NSUInteger) 81, @"Should be 81 cards in the deck for Set");
}

@end

//
//  PlayingCardDeckTest.m
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "PlayingCardDeckTest.h"
#import "PlayingCardDeck.h"

@implementation PlayingCardDeckTest

- (void) testCardsCount
{
    PlayingCardDeck* deck = [[PlayingCardDeck alloc] init];
    STAssertEquals((NSUInteger)52, [deck.cards count], @"In playing card deck must be all 52 cards");
}

@end

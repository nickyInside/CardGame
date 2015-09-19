//
//  CardMatchingGame.h
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"
#import "FlipResult.h"

@interface CardMatchingGame : NSObject

@property (nonatomic) int matchBonus;
@property (nonatomic) int flipCost;
@property (nonatomic) int mismatchPenalty;
- (id) initWithCardCount:(NSUInteger)cardCount maxCardsToOpen: (NSUInteger)maxCardsToOpen usingDeck:(Deck*) deck;
- (id) initWithCardCount:(NSUInteger)cardCount usingDeck:(Deck*) deck;
- (void) flipCardAtIndex:(NSUInteger)index;
- (Card*) cardAtIndex:(NSUInteger)index;
@property (readonly, nonatomic) int score;
@property (readonly, strong, nonatomic) FlipResult* lastFlipResult;
@property (strong, nonatomic) NSMutableArray* flipHistory;
@property (nonatomic) NSUInteger maxCardsToOpen;

@end

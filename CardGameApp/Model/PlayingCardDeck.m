//
//  PlayingCardDeck.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id) init
{
    if (self = [super init]) {
        for(NSString* suit in [PlayingCard validSuits]) {
            for(int rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard* card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                
                [self addCard:card atTop:NO];
            }
        }
    }
    
    return self;
}

@end

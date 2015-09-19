//
//  SetGame.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "SetGame.h"
#import "SetCardDeck.h"

@implementation SetGame

- (id) initWithCardCount:(NSUInteger)cardCount
{
    return self = [super initWithCardCount: cardCount maxCardsToOpen: 3 usingDeck: [[SetCardDeck alloc] init]];
}

@end

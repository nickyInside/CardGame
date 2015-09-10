//
//  MockDeck.m
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "MockDeck.h"

@implementation MockDeck

// draws top card from the deck
- (Card*) drawRandomCard
{
	Card* card = nil;
	
	if ([self.cards count]) {
		card = [self.cards objectAtIndex: 0];
		[self.cards removeObjectAtIndex: 0];
	}
	
	return card;
}

@end

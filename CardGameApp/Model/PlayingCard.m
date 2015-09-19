//
//  PlayingCard.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

+ (NSArray*)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank {
    return [[self rankStrings] count] - 1;
}

+ (NSArray*)validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

- (id) initWithContents: (NSString*)contents
{
	self = [self init];
	
	if (self) {
		NSUInteger length = [contents length];
		if (!(length == 2 || length == 3)) {
			return nil;
		}
		
		NSString* rankString = [contents substringWithRange:NSMakeRange(0, length-1)]; // rank is all first chars minus last one
		NSString* suit = [contents substringWithRange:NSMakeRange(length-1, 1)]; // suit is last char
		self.rank = [[PlayingCard rankStrings] indexOfObject:rankString];
		self.suit = suit;
	}
	
	return self;
}

- (NSString*) suit
{
    return _suit?_suit:@"?";
}

- (void) setSuit:(NSString*) aSuit
{
    if ([[PlayingCard validSuits] containsObject:aSuit]) {
        _suit = aSuit;
    }
}

- (void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (NSString*) contents
{
    NSString* rankString = [PlayingCard rankStrings][self.rank];
    return [rankString stringByAppendingString: self.suit];
}


- (int) match: (NSArray*) cards
{
	int suitsMatch = 0;
	int ranksMatch = 0;
	
	
	NSArray* combinations = @[];
	if ([cards count] == 1) {
		combinations = @[ @[self, cards[0]] ];
	} else if ([cards count] == 2) {
		combinations = @[ @[self, cards[0]], @[cards[0], cards[1]]];
	}
	
	for(NSArray* twoCards in combinations) {
		PlayingCard* first = twoCards[0];
		PlayingCard* second = twoCards[1];
		
		if ([first.suit isEqualToString: second.suit]) {
			suitsMatch++;
		} else if (first.rank == second.rank) {
			ranksMatch++;
		}
	}
	
	int suitsScore = 5*suitsMatch-4; // Gives 1 for 1 suitsMatch, 6 for 2 suitsMatch
	int ranksScore = 6*ranksMatch-2; // Gives 4 for 1 ranksMatch, 10 for 2 ranksMatch
	
	return MAX(0, MAX(suitsScore, ranksScore));
}

- (BOOL) isEqual:(id)object
{
    if ([object isKindOfClass: [PlayingCard class]]) {
        PlayingCard* another = (PlayingCard*)object;
        return (self.rank == another.rank) && ([self.suit isEqualToString: another.suit]);
    }
    return NO;
}

@end

//
//  PlayingCard.h
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

+ (NSUInteger) maxRank;
+ (NSArray*)validSuits;

- (id) initWithContents: (NSString*)contents;

@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString* suit;

@end

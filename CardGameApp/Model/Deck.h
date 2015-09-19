//
//  Deck.h
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (nonatomic) NSMutableArray* cards;

- (void) addCard: (Card*)card atTop:(BOOL)atTop;
- (Card*) drawRandomCard;

@end

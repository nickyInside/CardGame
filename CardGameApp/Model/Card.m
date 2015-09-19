//
//  Card.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "Card.h"

@implementation Card

- (NSString*) contents
{
	return nil; // should be defined in subclasses.
}

- (int) match: (NSArray*) cards
{
	return 0;
}

@end

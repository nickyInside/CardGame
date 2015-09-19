//
//  FlipResult.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "FlipResult.h"

static FlipResult* NoneFlipResult;

@implementation FlipResult

+ (FlipResult*) NoneFlipResult
{
    if (!NoneFlipResult)
        NoneFlipResult = [[FlipResult alloc] initWithType: FLIPRESULT_NONE cards: @[] points:0];
    return NoneFlipResult;
}

- (id) initWithType: (int) type cards: (NSArray*) cards points: (int) points
{
    self = [super init];
    if (self) {
        _type = type;
        _cards = cards;
        _points = points;
    }
    return self;
}

- (id) init {
    return nil;
}

@end

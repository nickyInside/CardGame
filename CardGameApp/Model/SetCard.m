//
//  SetCard.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "SetCard.h"

@implementation SetCard

+ (BOOL) allValuesSameOrDifferent: (NSArray*)ii;
{
    BOOL e1 = [ii[0] isEqual: ii[1]];
    BOOL e2 = [ii[1] isEqual: ii[2]];
    BOOL e3 = [ii[0] isEqual: ii[2]];
    return (e1 && e2 && e3) || ((!e1) && (!e2) && (!e3));
}

+ (NSArray*) stringSymbols {
    return @[@"●", @"■", @"▲"];
}

- (id) initWithNumber: (int)number symbol: (int)symbol color: (int)color shading: (int)shading
{
    self = [super init];
    
    if (self) {
        _number = number;
        _symbol = symbol;
        _color = color;
        _shading = shading;
    }
    
    return self;
}

- (NSString*) symbolString
{
    return [[self class] stringSymbols][self.symbol];
}

- (NSString*) contents
{
    NSString* s = @"";
    for(int i = 0; i < self.number; i++) {
        s = [s stringByAppendingString: [self symbolString]];
    }
    return s;
}

- (int) match:(NSArray *)cards
{
    if ([cards count] != 2)
        return 0;
    
    SetCard* c1 = self;
    SetCard* c2 = cards[0];
    SetCard* c3 = cards[1];
    
    BOOL isSet =
        [SetCard allValuesSameOrDifferent: @[@(c1.number), @(c2.number), @(c3.number)]] &&
        [SetCard allValuesSameOrDifferent: @[@(c1.symbol), @(c2.symbol), @(c3.symbol)]] &&
        [SetCard allValuesSameOrDifferent: @[@(c1.color), @(c2.color), @(c3.color)]] &&
        [SetCard allValuesSameOrDifferent: @[@(c1.shading), @(c2.shading), @(c3.shading)]];
    
    return isSet? 4 : 0;
}

@end

//
//  FlipResult.h
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FLIPRESULT_NONE 0
#define FLIPRESULT_FLIPPED_UP 1
#define FLIPRESULT_MATCH 2
#define FLIPRESULT_MISMATCH 3

@interface FlipResult : NSObject

@property (nonatomic) int type;
@property (nonatomic) int points;
@property (strong, nonatomic) NSArray* cards;

+ (FlipResult*) NoneFlipResult;

- (id) initWithType: (int) type cards: (NSArray*) cards points: (int) points;

@end

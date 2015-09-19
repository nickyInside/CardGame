//
//  FlipResultTest.m
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "FlipResultTest.h"
#import "FlipResult.h"

@implementation FlipResultTest

- (void) testCreation
{
    FlipResult* none = [FlipResult NoneFlipResult];
    STAssertNotNil(none, @"None flip result should be not nit");
    STAssertEquals(none.type, FLIPRESULT_NONE, @"None flip result type should be correct");
}

@end

//
//  GameResult.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "GameResult.h"

static NSDateFormatter* dateFormatter;
static NSUserDefaults* userDefaults;

@implementation GameResult

+ (NSUserDefaults*) userDefaults
{
    return userDefaults?userDefaults:[NSUserDefaults standardUserDefaults];
}

+ (void) setUserDefaults: (NSUserDefaults*)aUserDefaults
{
    userDefaults = aUserDefaults;
}

+ (NSArray*) allGameResults
{
    NSMutableArray* gameResults = [[NSMutableArray alloc] init];
    
    NSDictionary* allGameResultsDictionary = [[[self class] userDefaults] dictionaryForKey: ALL_RESULTS_KEY];
    for(id plist in [allGameResultsDictionary allValues]) {
        GameResult* gr = [[GameResult alloc] initFromPropertyList: plist];
        [gameResults addObject: gr];
    }
    
    return gameResults;
}

+ (NSArray*) gameTypeStrings
{
    return @[@"Match", @"Set"];
}

+ (NSDateFormatter*) dateFormatter
{
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"M/d/yy h:mma"];
    }
    return dateFormatter;
}

- (id) init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _endTime = _startTime;
        _score = 0;
    }
    return self;
}

- (id) initFromPropertyList: (id) plist
{
    self = [self init];
    if (self) {
        if ([plist isKindOfClass: [NSDictionary class]]) {
            NSDictionary* dictionary = (NSDictionary*) plist;
            _startTime = dictionary[START_KEY];
            _endTime = dictionary[END_KEY];
            _score = [((NSNumber*)dictionary[SCORE_KEY]) intValue];
            _gameType = [((NSNumber*)dictionary[GAMETYPE_KEY]) intValue];
            
            if (!_startTime || !_endTime)
                self = nil;
        }
    }
    return self;
}

- (void) setScore:(int)score
{
    _score = score;
    self.endTime = [NSDate date];
    [self synchronize];
}

- (NSTimeInterval) duration
{
    return [self.endTime timeIntervalSinceDate: self.startTime];
}

- (NSString*) description
{
    NSString* startTimeString = [[[self class] dateFormatter] stringFromDate: self.startTime];
    return [NSString stringWithFormat: @"%@ Score: %d (%@ %.0fs)", [self gameTypeString], self.score, startTimeString, [self duration]];
}

- (void) synchronize
{
    NSUserDefaults* defaults = [[self class] userDefaults];
    NSMutableDictionary* allResults = [[defaults dictionaryForKey: ALL_RESULTS_KEY] mutableCopy];
    
    if (!allResults)
        allResults = [[NSMutableDictionary alloc] init];
    
    allResults[[self.startTime description]] = [self asPropertyList];
    [defaults setObject: allResults forKey: ALL_RESULTS_KEY];
    [defaults synchronize];
}

- (NSDictionary*) asPropertyList
{
    return @{START_KEY: self.startTime, END_KEY: self.endTime, SCORE_KEY: @(self.score), GAMETYPE_KEY: @(self.gameType)};
}

- (NSComparisonResult) compareByDate: (GameResult*) another
{
    return [self.startTime compare: another.startTime];
}

- (NSComparisonResult) compareByScore: (GameResult*) another
{
    return [@(another.score) compare: @(self.score)];
}

- (NSComparisonResult) compareByDuration: (GameResult*) another
{
    return [@([self duration]) compare: @([another duration])];
}

- (NSString*) gameTypeString
{
    return [[self class] gameTypeStrings][[self gameType]];
}

@end

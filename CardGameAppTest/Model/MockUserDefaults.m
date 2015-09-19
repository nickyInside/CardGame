//
//  MockUserDefaults.m
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "MockUserDefaults.h"

@implementation MockUserDefaults

- (NSMutableDictionary*) storage
{
    if (!_storage)
        _storage = [[NSMutableDictionary alloc] init];    
    return _storage;
}

- (NSDictionary*) dictionaryForKey: (id) key
{
    return [self.storage objectForKey: key];
}

- (id) objectForKey: (id) key
{
    return [self.storage objectForKey: key];
}

- (void) setObject: (id) obj forKey: (id) key
{
    [self.storage setObject: obj forKey: key];
}

- (void) synchronize
{
}

@end

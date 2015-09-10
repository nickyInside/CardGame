//
//  MockUserDefaults.h
//  CardGame
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MockUserDefaults : NSObject 

@property (strong, nonatomic) NSMutableDictionary* storage;

- (NSDictionary*) dictionaryForKey: (id) key;
- (id) objectForKey: (id) key;

@end

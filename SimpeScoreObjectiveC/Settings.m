//
//  Singleton.m
//  SimpeScoreObjectiveC
//
//  Created by Anton Pavlov on 28.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Settings.h"

@implementation Settings

+ (instancetype)sharedSettings {
    static Settings *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Settings alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    self = [super init];
    if (self) {
        self.totaMoney = 0;
    }
    return self;
}
@end



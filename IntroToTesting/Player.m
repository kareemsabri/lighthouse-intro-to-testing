//
//  Player.m
//  IntroToTesting
//
//  Created by Kareem Sabri on 2017-02-08.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init:(NSString *)name number:(NSInteger)number
{
    self = [super init];
    if (self) {
        _name = name;
        _number = number;
        _isActive = true;
        _pendingReturn = false;
    }
    return self;
}

-(void)removeFromPlay:(NSString *)removedReason {
    self.isActive = false;
    self.pendingReturn = false;
}

-(void)returnToPlay {
    self.isActive = true;
    self.pendingReturn = false;
}

-(void)returnToPlay:(NSDate *)date {
    if (self.isActive) {
        return;
    }
    
    if ([date timeIntervalSinceNow] <= 0) {
        self.isActive = true;
        self.pendingReturn = false;
    } else {
        self.pendingReturn = true;
    }
    
    self.returnDate = date;
}

-(void)save {
    [self saveToServer];
}

-(void)saveToServer {
    //does something slow that takes 3 seconds
    [NSThread sleepForTimeInterval:3.0f];
}

@end

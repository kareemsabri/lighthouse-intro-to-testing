//
//  Player.h
//  IntroToTesting
//
//  Created by Kareem Sabri on 2017-02-08.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger number;
@property (nonatomic) bool isActive;
@property (nonatomic) NSString *removedReason;
@property (nonatomic) NSDate *returnDate;
@property (nonatomic) bool pendingReturn;

- (instancetype)init:(NSString *)name number:(NSInteger)number;
-(void)removeFromPlay:(NSString *)removedReason;
-(void)returnToPlay;
-(void)returnToPlay:(NSDate *)date;
-(void)save;
-(void)saveToServer;
@end

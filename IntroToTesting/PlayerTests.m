//
//  PlayerTests.m
//  IntroToTesting
//
//  Created by Kareem Sabri on 2017-02-09.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Player.h"
#import "OCMock.h"

@interface PlayerTests : XCTestCase
@property (nonatomic) Player *player;
@end

@implementation PlayerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.player = [[Player alloc]init:@"DeRozan" number:10];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.player = nil;
}

- (void)testInitSetsName {
    XCTAssertEqual(self.player.name, @"DeRozan");
}

- (void)testInitSetsNumber {
    XCTAssertEqual(self.player.number, 10);
}

- (void)testRemoveFromPlaySetsIsActiveToFalse {
    XCTAssertTrue(self.player.isActive);
    [self.player removeFromPlay:@"reason"];
    XCTAssertFalse(self.player.isActive);
}

- (void)testSaveSavesPlayerToServer {
    id mockPlayer = OCMPartialMock(self.player);
    OCMStub([mockPlayer saveToServer]);
    [mockPlayer save];
    OCMVerify([mockPlayer saveToServer]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

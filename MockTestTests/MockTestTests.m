//
//  MockTestTests.m
//  MockTestTests
//
//  Created by iOS-School-1 on 15.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCMock.h"
#import "ViewController.h"

@interface ViewController (TestPrivate)

@property (nonatomic, strong) UITextField *tf1;
@property (nonatomic, strong) UITextField *tf2;
@property (nonatomic, strong) UITextField *res;

- (void)button1Press;

@end


@interface MockTestTests : XCTestCase

@property(nonatomic,strong) id controllerMock;

@end

@implementation MockTestTests

- (void)setUp {
    [super setUp];
    ViewController *controller = [[ViewController alloc] init];
    self.controllerMock = OCMPartialMock(controller);
    [self.controllerMock setRes:[UITextField new]];

    id field1Mock = OCMPartialMock([UITextField new]);
    id field2Mock = OCMPartialMock([UITextField new]);

    OCMStub([field1Mock text]).andReturn(@"3");
    OCMStub([field2Mock text]).andReturn(@"21");
    [self.controllerMock setTf1:field1Mock];
    [self.controllerMock setTf2:field2Mock];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.controllerMock = nil;
}

- (void)testExample {
    [self.controllerMock button1Press];
    XCTAssertTrue([@"63" isEqualToString:[[self.controllerMock res] text]], @"Test button press");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

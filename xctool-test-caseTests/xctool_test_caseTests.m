//
//  xctool_test_caseTests.m
//
//  Created by Jason Denizac on 10/11/13.
//  Copyright (c) 2013 jden. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "xctool_test_case.h"

@interface xctool_test_caseTests : XCTestCase

@end

@implementation xctool_test_caseTests

- (void)testDefaultExample
{
    xctool_test_case *obj = [xctool_test_case new];
    XCTAssert([obj.value isEqualToString:@"OK"]);
}

@end

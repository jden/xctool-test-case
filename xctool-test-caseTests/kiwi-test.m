//
//  kiwi-test.m
//  xctool-test-case
//
//  Created by Jason Denizac on 10/11/13.
//  Copyright (c) 2013 jden. All rights reserved.
//

#import "Kiwi.h"
#import "xctool_test_case.h"

SPEC_BEGIN(kiwi_test)

describe(@"test class", ^{
    it(@"is ok", ^{
        xctool_test_case *obj = [xctool_test_case new];
        [[obj.value should]equal:@"OK"];
    });
});

SPEC_END
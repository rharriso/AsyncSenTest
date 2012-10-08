//
//  AsyncSenTestCase.h
//  verse
//
//  Created by Ross Harrison on 2/6/12.
//  Copyright (c) 2012 Roundus LLC. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface AsyncSenTestCase : SenTestCase{
    BOOL done;
}

- (BOOL)waitForCompletion:(NSTimeInterval)timeoutSecs expectStop:(BOOL)expectStop;
- (BOOL)waitForCompletion:(NSTimeInterval)timeoutSecs;
- (void)start;
- (void)stop;

@end

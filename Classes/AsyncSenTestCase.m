//
//  AsyncSenTestCase.m
//  verse
//
//  Created by Ross Harrison on 2/6/12.
//  Copyright (c) 2012 Roundus LLC. All rights reserved.
//

#import "AsyncSenTestCase.h"

@implementation AsyncSenTestCase


- (BOOL)waitForCompletion:(NSTimeInterval)timeoutSecs expectStop:(BOOL)expectStop{
    NSDate *timeoutDate = [NSDate dateWithTimeIntervalSinceNow:timeoutSecs];
    
    do {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:timeoutDate];
        if([timeoutDate timeIntervalSinceNow] < 0.0)
            break;
    } while (!done);
    
    if(expectStop && !done){
        STFail(@"Time out reached without completion.");
    }
    
    return done;
}

- (BOOL)waitForCompletion:(NSTimeInterval)timeoutSecs{
    return [self waitForCompletion:timeoutSecs expectStop:NO];
}

- (void)start{
    done = YES;
}

- (void)stop{
    done = NO;
}

@end

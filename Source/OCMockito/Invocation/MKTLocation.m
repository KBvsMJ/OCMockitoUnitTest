//  OCMockito by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2015 Jonathan M. Reid. See LICENSE.txt

#import "MKTLocation.h"

#import "MKTFilterCallStack.h"
#import "MKTParseCallStack.h"


@implementation MKTLocation

- (instancetype)init
{
    self = [super init];
    if (self)
        _callStackSymbols = [[NSThread callStackSymbols] copy];
    return self;
}

- (NSString *)description
{
    NSArray *stack = MKTFilterCallStack(MKTParseCallStack(self.callStackSymbols));
    return [stack componentsJoinedByString:@"\n"];
}

@end

//
//  
//    ___  _____   ______  __ _   _________ 
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_| 
//
//  Created by Bart Claessens. bart (at) revolver . be
//

#import "REVClusterPin.h"


@implementation REVClusterPin
@synthesize title,coordinate,subtitle;
@synthesize nodes;

- (NSUInteger) nodeCount
{
    if( nodes )
        return [nodes count];
    return 0;
}

#if !__has_feature(objc_arc)
- (void)dealloc
{
    [title release];
    [subtitle release];
    [nodes release];
    [super dealloc];
}
#endif

@end

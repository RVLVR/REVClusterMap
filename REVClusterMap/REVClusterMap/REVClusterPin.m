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

- (void)dealloc
{
    [title release];
    [subtitle release];
    [nodes release];
    [super dealloc];
}
@end

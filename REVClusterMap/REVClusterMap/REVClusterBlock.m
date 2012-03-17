//
//  
//    ___  _____   ______  __ _   _________ 
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_| 
//
//  Created by Bart Claessens. bart (at) revolver . be
//

#import "REVClusterMap.h"

@implementation REVClusterBlock

@synthesize blockRect;

- (void) addAnnotation:(id<MKAnnotation>)annotation
{
    if( !annotationsCollection )
    {
        annotationsCollection = [[REVAnnotationsCollection alloc] init];
    }
    
    [annotationsCollection addObject:annotation];
}
- (id<MKAnnotation>) getAnnotationForIndex:(NSInteger)index
{
    return [annotationsCollection objectAtIndex:index];
}

- (id<MKAnnotation>) getClusteredAnnotation
{
    if( [self count] == 1 )
    {
        return [self getAnnotationForIndex:0];
    } else if ( [self count] > 1 )
    {
        
        double x = [annotationsCollection xSum] / [annotationsCollection count];
        double y = [annotationsCollection ySum] / [annotationsCollection count];
        
        CLLocationCoordinate2D location = MKCoordinateForMapPoint(MKMapPointMake(x, y));
        #if !__has_feature(objc_arc)
        REVClusterPin *pin = [[[REVClusterPin alloc] init] autorelease];
#else
        REVClusterPin *pin = [[REVClusterPin alloc] init];
#endif
        pin.coordinate = location;
        pin.nodes = [annotationsCollection collection];
        return pin;

    }
    return nil;
}

- (NSInteger) count
{
    return [annotationsCollection count];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"%i annotations",[self count]];
}

#if !__has_feature(objc_arc)
- (void) dealloc
{
    [annotationsCollection release], annotationsCollection = nil;
    [super dealloc];
}
#endif

@end

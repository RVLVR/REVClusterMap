//
//  
//    ___  _____   ______  __ _   _________ 
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_| 
//
//  Created by Bart Claessens. bart (at) revolver . be
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface REVAnnotationsCollection : NSObject {
    NSMutableArray *collection;
    
    double xSum;
    double ySum;
}

@property (nonatomic,readonly) NSMutableArray *collection;

@property double xSum;
@property double ySum;

- (void) addObject:(id<MKAnnotation>)annotation;
- (id) objectAtIndex:(NSUInteger)index;
- (NSUInteger) count;
@end

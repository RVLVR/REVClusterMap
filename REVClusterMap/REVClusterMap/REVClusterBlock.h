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
#import "REVAnnotationsCollection.h"

@interface REVClusterBlock : NSObject {
    REVAnnotationsCollection *annotationsCollection;
    
    MKMapRect blockRect;
}

@property MKMapRect blockRect;

- (void) addAnnotation:(id<MKAnnotation>)annotation;
- (id<MKAnnotation>) getClusteredAnnotation;
- (id<MKAnnotation>) getAnnotationForIndex:(NSInteger)index;
- (NSInteger) count;

@end

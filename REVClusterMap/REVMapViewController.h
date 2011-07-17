//
//  
//    ___  _____   ______  __ _   _________ 
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_| 
//
//  Created by Bart Claessens. bart (at) revolver . be
//

#import <UIKit/UIKit.h>
#import "REVClusterMapView.h"

@interface REVMapViewController : UIViewController <MKMapViewDelegate> {
    REVClusterMapView *_mapView;
}

@end

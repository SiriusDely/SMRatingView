
#import <UIKit/UIKit.h>
#import "SMRatingViewController.h"

@interface SMRatingViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	SMRatingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SMRatingViewController *viewController;

@end


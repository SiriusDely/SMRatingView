
#import <UIKit/UIKit.h>
#import "SMRatingView.h"

@interface SMRatingViewController : UIViewController <SMRatingViewDelegate>

@property (retain, nonatomic) SMRatingView *ratingView;
@property (retain, nonatomic) UILabel *ratingLabel;

@end

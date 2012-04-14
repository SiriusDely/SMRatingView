
#import <UIKit/UIKit.h>

@class SMRatingView;

@protocol SMRatingViewDelegate
- (void)rateView:(SMRatingView *)rateView ratingDidChange:(float)rating;
@end

@interface SMRatingView : UIView

@property (retain, nonatomic) UIImage *notSelectedImage;
@property (retain, nonatomic) UIImage *halfSelectedImage;
@property (retain, nonatomic) UIImage *fullSelectedImage;
@property (assign, nonatomic) float rating;
@property (assign) BOOL editable;
@property (retain) NSMutableArray * imageViews;
@property (assign, nonatomic) int maxRating;
@property (assign) int midMargin;
@property (assign) int leftMargin;
@property (assign) CGSize minImageSize;
@property (assign) id <SMRatingViewDelegate> delegate;

@end

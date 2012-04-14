
#import "SMRatingViewController.h"

@implementation SMRatingViewController
@synthesize ratingView;
@synthesize ratingLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	ratingView = [[SMRatingView alloc] initWithFrame:CGRectMake(self.view.center.x-(150/2), self.view.center.y-100, 150, 30)];
    ratingView.rating = 2.1f;
    ratingView.editable = YES;
    ratingView.maxRating = 5;
    ratingView.delegate = self;
	[self.view addSubview:ratingView];
	
	ratingLabel = [[UILabel alloc] initWithFrame:CGRectMake(ratingView.center.x-(ratingView.frame.size.width/2), ratingView.frame.origin.y+ratingView.frame.size.height+20, ratingView.frame.size.width, ratingView.frame.size.height)];
	ratingLabel.textAlignment = UITextAlignmentCenter;
	ratingLabel.text = [NSString stringWithFormat:@"Rating: %f", 2.1f];
	[self.view addSubview:ratingLabel];
	
}

- (void)rateView:(SMRatingView *)rateView ratingDidChange:(float)rating {
    ratingLabel.text = [NSString stringWithFormat:@"Rating: %f", rating];
}

- (void)viewDidUnload
{
    [self setRatingView:nil];
    [self setRatingLabel:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

@end

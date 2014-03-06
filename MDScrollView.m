
#import "MDScrollView.h"

@interface MDScrollView ()
@property (strong) UIView * extremeTop;
@property (strong) UIView * extremeBottom;
@end

#define ExtremeAreaSize 400.0

@implementation  MDScrollView
- (void) awakeFromNib
{
    [super awakeFromNib];
    
    self.extremeTop = [[UIView alloc] initWithFrame: CGRectMake(0, -ExtremeAreaSize, self.bounds.size.width, ExtremeAreaSize)];
    [self.extremeTop setBackgroundColor: [UIColor whiteColor]];
    [self addSubview: self.extremeTop];
    
    self.extremeBottom = [[UIView alloc] initWithFrame: CGRectMake(0, self.bounds.size.height, self.bounds.size.width, ExtremeAreaSize)];
    [self.extremeBottom setBackgroundColor: [UIColor whiteColor]];
    [self addSubview: self.extremeBottom];
}

- (void) setExtremeAreaColor:(UIColor *) color
{
    [self.extremeTop setBackgroundColor: color];
    [self.extremeBottom setBackgroundColor: color];
}

- (void) setTopAreaExtremeColor:(UIColor *) color
{
    [self.extremeTop setBackgroundColor: color];
}

- (void) setBottomAreaExtremeColor:(UIColor *) color
{
    [self.extremeBottom setBackgroundColor: color];
}

@end
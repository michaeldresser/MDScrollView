
#import "MDScrollView.h"
#import <objc/runtime.h>

#define ExtremeAreaSize 400.0

static void * ExtremeAreaKeyTop;
static void * ExtremeAreaKeyBottom;

@implementation  UIScrollView (MDScrollView)
- (UIView *)topView
{
    return objc_getAssociatedObject(self, ExtremeAreaKeyTop);
}

- (UIView *)bottomView
{
    return objc_getAssociatedObject(self, ExtremeAreaKeyBottom);
}

- (void)setTopView: (UIView *) newView
{
    objc_setAssociatedObject(self, ExtremeAreaKeyTop, newView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setBottomView: (UIView *) newView
{
    objc_setAssociatedObject(self, ExtremeAreaKeyBottom, newView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void) awakeFromNib
{
    [super awakeFromNib];
    
    UIView * extremeTop = [[UIView alloc] initWithFrame: CGRectMake(0, -ExtremeAreaSize, self.bounds.size.width, ExtremeAreaSize)];
    [extremeTop setBackgroundColor: [UIColor whiteColor]];
    [self addSubview: extremeTop];
    
    UIView * extremeBottom = [[UIView alloc] initWithFrame: CGRectMake(0, (self.bounds.size.height > self.contentSize.height)?(self.bounds.size.height):(self.contentSize.height), self.bounds.size.width, ExtremeAreaSize)];
    [extremeBottom setBackgroundColor: [UIColor whiteColor]];
    [self addSubview: extremeBottom];
    
    [self setTopView: extremeTop];
    [self setBottomView: extremeBottom];
}

- (void) setExtremeAreaColor:(UIColor *) color
{
    [[self topView] setBackgroundColor: color];
    [[self bottomView] setBackgroundColor: color];
}

- (void) setTopAreaExtremeColor:(UIColor *) color
{
    [[self topView] setBackgroundColor: color];
}

- (void) setBottomAreaExtremeColor:(UIColor *) color
{
    [[self bottomView] setBackgroundColor: color];
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    // unfortunatly the content can change size which means we'll have to move
    // where the bottom extreme is, and the easiest place to make sure its always
    // in the right area is to update the location in the layoutsubviews, there
    // is problem a better place, somewhere that only gets updates when the content
    // changes.
    [self bottomView].frame = CGRectMake(0, (self.bounds.size.height > self.contentSize.height)?(self.bounds.size.height):(self.contentSize.height), self.bounds.size.width, ExtremeAreaSize);
}

@end
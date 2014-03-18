
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIScrollView (MDScrollView)

/**
 *  Sets both the top and bottom extreme areas to the same color
 *
 *  @param color Color To Set
 */
- (void) setExtremeAreaColor:(UIColor *) color;
/**
 *  Sets the color of area above the view
 *
 *  @param color Color To Set
 */
- (void) setTopAreaExtremeColor:(UIColor *) color;
/**
 *  Sets the color of the area below the view
 *
 *  @param color Color To Set
 */
- (void) setBottomAreaExtremeColor:(UIColor *) color;

@end
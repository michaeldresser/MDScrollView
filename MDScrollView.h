
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MDScrollView : UIScrollView

/**
 *  <#Description#>
 *
 *  @param color <#color description#>
 */
- (void) setExtremeAreaColor:(UIColor *) color;
/**
 *  <#Description#>
 *
 *  @param color <#color description#>
 */
- (void) setTopAreaExtremeColor:(UIColor *) color;
/**
 *  <#Description#>
 *
 *  @param color <#color description#>
 */
- (void) setBottomAreaExtremeColor:(UIColor *) color;

@end
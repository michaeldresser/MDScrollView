
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MDTableView : UITableView
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
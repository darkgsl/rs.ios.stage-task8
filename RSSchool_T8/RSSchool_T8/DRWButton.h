
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
  active,
  noActive, //isEnable == false
  highlighted
} ButtonState;

@interface DRWButton : UIButton
-(void)setState:(ButtonState)state;
@end

NS_ASSUME_NONNULL_END

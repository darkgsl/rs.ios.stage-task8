//
//  PaletteButton.h
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/18/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
  choose,
  unChoose
} PalleteButtonState;

@interface PaletteButton : UIButton

@end

NS_ASSUME_NONNULL_END

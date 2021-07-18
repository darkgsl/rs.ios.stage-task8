//
//  ViewController.h
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/15/21.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
  planet,
  head,
  tree,
  landscape
} Drawings;


NS_ASSUME_NONNULL_BEGIN
extern Drawings globalPicture;
//extern NSInteger ffff;
@interface RootViewController :  UIViewController

@end

NS_ASSUME_NONNULL_END

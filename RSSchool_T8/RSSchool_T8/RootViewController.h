//
//  ViewController.h
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/15/21.
//

#import <UIKit/UIKit.h>
//@class TestSwiftClass


typedef enum : NSUInteger {
  planet,
  head,
  tree,
  landscape
} Drawings;

typedef enum : NSUInteger {
  idle,
  draw,
  done
} ScreenState;

@protocol RootViewControllerDelegate <NSObject>

@property (assign, nonatomic) Drawings drawning;

@end

NS_ASSUME_NONNULL_BEGIN
extern BOOL isDraw;
extern Drawings globalPicture;
extern ScreenState screenState;
extern NSMutableArray *colorsButtonArrat;
extern NSMutableArray<UIColor *> *colors;
extern NSMutableSet *colorsButtonSet;
//extern NSInteger ffff;
@interface RootViewController :  UIViewController

//@property (weak, nonatomic) RootViewControllerDelegate* delegate;
@end



NS_ASSUME_NONNULL_END

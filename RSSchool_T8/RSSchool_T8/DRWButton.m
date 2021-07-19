//
//  DRWButton.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/16/21.
//

#import "DRWButton.h"

@implementation DRWButton



- (instancetype)init
{
  self = [super init];
  if (self) {
   // self state
  }
  return self;
}

- (void) layoutSubviews {
  [super layoutSubviews];
  // self.frame = CGRectMake(0,0,200, 40);
 // self.tintColor = [UIColor colorNamed:@"TaskColor"];
  
  
  //self.titleLabel.frame.size = CGSizeMake(200, 40);
  //self.imageView.frame = CGRectMake(20, 10, 25, 25);
  

}

-(void) awakeFromNib {
  [super awakeFromNib];
  //self.layer.backgroundColor = UIColor.redColor.CGColor;
//  self.
//  CAShapeLayer * maskLayer = [CAShapeLayer layer];
//      maskLayer.path = [UIBezierPath bezierPathWithRoundedRect: self.view.bounds byRoundingCorners: UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii: (CGSize){40.0, 40.}].CGPath;
//      maskLayer.frame = self.view.bounds;
//      self.view.layer.mask = maskLayer;
//
//      CAShapeLayer * shadowLayer = [CAShapeLayer layer];
//      shadowLayer.path = [UIBezierPath bezierPathWithRoundedRect: self.view.bounds byRoundingCorners: UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii: (CGSize){40.0, 40.}].CGPath;
//      shadowLayer.frame = self.view.bounds;
//      shadowLayer.shadowRadius = 4;
//      [shadowLayer setShadowOffset:CGSizeZero];
//      [shadowLayer setShadowColor:[[UIColor blackColor] CGColor]];
//      [shadowLayer setShadowOpacity:0.25];
//      [self.view.layer addSublayer:shadowLayer];
//  
//  
  
  
  
  
  //self.layer.shadowRadius = 1.0;
 // self.layer.shadowOffset = CGSizeMake(0.0, 0.0);
  //self.layer.maskedCorners;
  
  
  self.enabled = true;
  self.tintColor = [UIColor colorNamed:@"LightGreenSea"];
 
  self.layer.cornerRadius = 10;
  self.layer.borderWidth = 1;
  self.layer.masksToBounds = YES;
  self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  
  //Normal (active) state
 // self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
  // self.layer.borderColor = [[[RSColors sharedInstance] colorForStatusColor:Blue] CGColor];
  self.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
  
  [self setTitleColor:[UIColor colorNamed:@"LightGreenSea"] forState:UIControlStateDisabled];
  
  
 //[ self setBackgroundColor:<#(UI_APPEARANCE_SELECTOR UIColor *)#>]
  //= [UIColor colorNamed:@"TaskColor"].CGColor for;
  
  //[self.authorizeButton setTitleColor:[UIColor colorWithHex:littleBoyBlueHex alpha:0.5] forState:UIControlStateDisabled]
  
  
  //NSLog(@"%@", self.titleLabel);
}
/*
active,
noActive, //isEnable == false
highlighted
*/
-(void)setState:(ButtonState)state{
  switch (state) {
    case active:
      self.alpha = 1;
      self.enabled = true;
     // self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
      self.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
      
      /*
      self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
      self.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
       */
      break;
    case noActive:
      self.enabled = false;
      self.alpha = 0.5;
     // self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
     // self.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
      //self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
      //self.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
      break;
    case highlighted:
      self.alpha = 1;
      self.enabled = true;
     // self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
      self.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
      break;

  }
  
}



@end

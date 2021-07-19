#import "DRWButton.h"

@implementation DRWButton
-(void) awakeFromNib {
  [super awakeFromNib];
  
  self.enabled = true;
  self.tintColor = [UIColor colorNamed:@"LightGreenSea"];
  
  self.layer.cornerRadius = 10;
  self.layer.borderWidth = 1;
  self.layer.masksToBounds = YES;
  self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  self.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
  [self setTitleColor:[UIColor colorNamed:@"LightGreenSea"] forState:UIControlStateDisabled];
}
-(void)setState:(ButtonState)state{
  switch (state) {
    case active:
      self.alpha = 1;
      self.enabled = true;
      self.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
      break;
    case noActive:
      self.enabled = false;
      self.alpha = 0.5;
      
      break;
    case highlighted:
      self.alpha = 1;
      self.enabled = true;
      
      self.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
      break;
  }
}
@end

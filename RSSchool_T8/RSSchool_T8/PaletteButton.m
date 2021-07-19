
#import "PaletteButton.h"

@implementation PaletteButton

-(void) awakeFromNib {
  [super awakeFromNib];
  
  self.layer.borderColor = UIColor.whiteColor.CGColor;
  self.layer.shadowRadius = 1.0;
  self.layer.shadowOffset = CGSizeMake(0.0, 0.0);
  
  self.layer.cornerRadius = 10;
  self.layer.borderWidth = 8;
 // self.layer.masksToBounds = YES;
}

@end

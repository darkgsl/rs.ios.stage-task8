//
//  PaletteButton.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/18/21.
//

#import "PaletteButton.h"

@implementation PaletteButton

-(void) awakeFromNib {
  [super awakeFromNib];
  
  self.layer.borderColor = UIColor.whiteColor.CGColor;
  self.layer.shadowRadius = 1.0;
  self.layer.shadowOffset = CGSizeMake(0.0, 0.0);
  //self.layer.maskedCorners;
  
  //[UIColor colorWithRed:0 green:0 blue:0 alpha:1].CGColor;
  
  
  self.layer.cornerRadius = 10;
  self.layer.borderWidth = 8;
 // self.layer.masksToBounds = YES;
  
}

@end

//
//  DRWButton.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/16/21.
//

#import "DRWButton.h"

@implementation DRWButton

- (void) layoutSubviews {
    [super layoutSubviews];
 // self.frame = CGRectMake(0,0,200, 40);
  self.tintColor = [UIColor colorNamed:@"TaskColor"];


    //self.titleLabel.frame.size = CGSizeMake(200, 40);
   //self.imageView.frame = CGRectMake(20, 10, 25, 25);
    
    
}

-(void) awakeFromNib {
    [super awakeFromNib];
  self.layer.backgroundColor = UIColor.redColor.CGColor;
  self.layer.masksToBounds = YES;
  self.layer.cornerRadius = 10;
  self.layer.borderWidth = 2;
  self.layer.borderColor = [UIColor colorNamed:@"TaskColor"].CGColor;
   // self.layer.borderColor = [[[RSColors sharedInstance] colorForStatusColor:Blue] CGColor];
  
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

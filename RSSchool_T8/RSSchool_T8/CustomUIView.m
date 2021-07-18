//
//  CustomUIView.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/16/21.
//

#import "CustomUIView.h"

@implementation CustomUIView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  NSLog(@"testing...");
  
  
  //CGRect rect2 = CGRectMake(10, 10, 100, 100);
//  UIBezierPath* bezierPath = [UIBezierPath bezierPathWithRect:rect];
//  bezierPath.fill;
  
  /*
   CGContextRef context=UIGraphicsGetCurrentContext();
   CGContextBeginPath(context);
   CGContextMoveToPoint(context, 50, 50);
   CGContextAddLineToPoint(context, 100, 120);
   CGContextAddLineToPoint(context, 20, 100);
   CGContextClosePath(context);

   [[UIColor greenColor] setFill];
   [[UIColor redColor] setStroke];

   CGContextDrawPath(context,kCGPathFillStroke);
   */
  /*
  UIBezierPath *path=[UIBezierPath bezierPath];
          // Устанавливаем начальную точку
     [path moveToPoint:CGPointMake(50, 50)];
          // Устанавливаем линию в определенную точку
     [path addLineToPoint:CGPointMake(200, 200)];
          // Рисуем путь
  [path stroke];
   */
  UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  [bezierPath moveToPoint: CGPointMake(61.5, 29)];
  [bezierPath addLineToPoint: CGPointMake(77, 89)];
  [bezierPath addLineToPoint: CGPointMake(89, 112)];
  [bezierPath addLineToPoint: CGPointMake(106.5, 131.5)];
  [bezierPath addLineToPoint: CGPointMake(133.5, 154)];
  [bezierPath addLineToPoint: CGPointMake(157, 159.5)];
  [bezierPath addLineToPoint: CGPointMake(193, 142)];
  [bezierPath addLineToPoint: CGPointMake(220, 112)];
  [bezierPath addLineToPoint: CGPointMake(228.5, 100)];
  [bezierPath addLineToPoint: CGPointMake(228.5, 77.5)];
  [bezierPath addLineToPoint: CGPointMake(230.5, 50.5)];
  [bezierPath addLineToPoint: CGPointMake(218.5, 40.5)];
  [bezierPath addLineToPoint: CGPointMake(202, 43.5)];
  [bezierPath addLineToPoint: CGPointMake(191, 60.5)];
  [bezierPath addLineToPoint: CGPointMake(189, 83.5)];
  [bezierPath addLineToPoint: CGPointMake(193, 96)];
  [strokeColor setStroke];
  bezierPath.lineWidth = 1;
  bezierPath.miterLimit = 4;
  bezierPath.lineCapStyle = kCGLineCapRound;
  [bezierPath stroke];

  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  [bezier2Path moveToPoint: CGPointMake(184, 100)];
  [bezier2Path addLineToPoint: CGPointMake(175.5, 98.5)];
  [bezier2Path addLineToPoint: CGPointMake(166, 100.5)];
  [bezier2Path addLineToPoint: CGPointMake(158, 101.5)];
  [bezier2Path addLineToPoint: CGPointMake(148.5, 100.5)];
  [bezier2Path addLineToPoint: CGPointMake(140, 99)];
  [bezier2Path addLineToPoint: CGPointMake(133.5, 98.5)];
  [bezier2Path addLineToPoint: CGPointMake(126, 100)];
  [bezier2Path addLineToPoint: CGPointMake(121.5, 102)];
  [bezier2Path addLineToPoint: CGPointMake(127.5, 104.5)];
  [bezier2Path addLineToPoint: CGPointMake(132, 108)];
  [bezier2Path addLineToPoint: CGPointMake(136.5, 113)];
  [bezier2Path addLineToPoint: CGPointMake(142.5, 115.5)];
  [bezier2Path addLineToPoint: CGPointMake(150, 116.5)];
  [bezier2Path addLineToPoint: CGPointMake(157, 115.5)];
  [bezier2Path addLineToPoint: CGPointMake(164.5, 116.5)];
  [bezier2Path addLineToPoint: CGPointMake(170.5, 115.5)];
  [bezier2Path addLineToPoint: CGPointMake(177, 111.5)];
  [bezier2Path addLineToPoint: CGPointMake(184, 103.5)];
  [bezier2Path addLineToPoint: CGPointMake(188.5, 97.5)];
  [bezier2Path addLineToPoint: CGPointMake(180.5, 96.5)];
  [bezier2Path addLineToPoint: CGPointMake(171.5, 95.5)];
  [bezier2Path addLineToPoint: CGPointMake(162.5, 93.5)];
  [bezier2Path addLineToPoint: CGPointMake(154, 93)];
  [bezier2Path addLineToPoint: CGPointMake(144, 94.5)];
  [bezier2Path addLineToPoint: CGPointMake(135, 96.5)];
  [bezier2Path addLineToPoint: CGPointMake(125, 97.5)];
  [bezier2Path addLineToPoint: CGPointMake(118, 97)];
  [bezier2Path addLineToPoint: CGPointMake(127.5, 91)];
  [bezier2Path addLineToPoint: CGPointMake(136.5, 84.5)];
  [bezier2Path addLineToPoint: CGPointMake(142.5, 81)];
  [bezier2Path addLineToPoint: CGPointMake(147.5, 82.5)];
  [bezier2Path addLineToPoint: CGPointMake(153, 84.5)];
  [bezier2Path addLineToPoint: CGPointMake(159.5, 83.5)];
  [bezier2Path addLineToPoint: CGPointMake(166, 82.5)];
  [bezier2Path addLineToPoint: CGPointMake(171.5, 82.5)];
  [bezier2Path addLineToPoint: CGPointMake(174.5, 84.5)];
  [bezier2Path addLineToPoint: CGPointMake(179.5, 89.5)];
  [bezier2Path addLineToPoint: CGPointMake(187, 94)];
  [strokeColor setStroke];
  bezier2Path.lineWidth = 1;
  bezier2Path.miterLimit = 4;
  bezier2Path.lineCapStyle = kCGLineCapRound;
  [bezier2Path stroke];

  
  UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
  [bezier3Path moveToPoint: CGPointMake(189.5, 102.5)];
  [bezier3Path addLineToPoint: CGPointMake(194, 108.5)];
  [bezier3Path addLineToPoint: CGPointMake(196.5, 115)];
  [bezier3Path addLineToPoint: CGPointMake(193, 124)];
  [bezier3Path addLineToPoint: CGPointMake(186, 132.5)];
  [bezier3Path addLineToPoint: CGPointMake(177, 139.5)];
  [bezier3Path addLineToPoint: CGPointMake(167.5, 132.5)];
  [bezier3Path addLineToPoint: CGPointMake(157, 128.5)];
  [bezier3Path addLineToPoint: CGPointMake(147.5, 128.5)];
  [bezier3Path addLineToPoint: CGPointMake(135.5, 132.5)];
  [bezier3Path addLineToPoint: CGPointMake(127.5, 142)];
  [bezier3Path addLineToPoint: CGPointMake(121, 154.5)];
  [bezier3Path addLineToPoint: CGPointMake(109.5, 147.5)];
  [bezier3Path addLineToPoint: CGPointMake(101.5, 137.5)];
  [bezier3Path addLineToPoint: CGPointMake(93, 128.5)];
  [bezier3Path addLineToPoint: CGPointMake(93, 142)];
  [bezier3Path addLineToPoint: CGPointMake(93, 170.5)];
  [bezier3Path addLineToPoint: CGPointMake(93, 187.5)];
  [bezier3Path addLineToPoint: CGPointMake(86, 199)];
  [bezier3Path addLineToPoint: CGPointMake(74.5, 207.5)];
  [bezier3Path addLineToPoint: CGPointMake(63.5, 214.5)];
  [bezier3Path addLineToPoint: CGPointMake(81, 221)];
  [bezier3Path addLineToPoint: CGPointMake(94.5, 229.5)];
  [bezier3Path addLineToPoint: CGPointMake(105, 243.5)];
  [bezier3Path addLineToPoint: CGPointMake(119, 261)];
  [bezier3Path addLineToPoint: CGPointMake(138, 279)];
  [bezier3Path addLineToPoint: CGPointMake(157, 285.5)];
  [bezier3Path addLineToPoint: CGPointMake(171, 285.5)];
  [bezier3Path addLineToPoint: CGPointMake(186, 277.5)];
  [bezier3Path addLineToPoint: CGPointMake(199.5, 261)];
  [bezier3Path addLineToPoint: CGPointMake(209.5, 239.5)];
  [bezier3Path addLineToPoint: CGPointMake(219, 223.5)];
  [bezier3Path addLineToPoint: CGPointMake(233.5, 217)];
  [bezier3Path addLineToPoint: CGPointMake(237, 217)];
  [bezier3Path addLineToPoint: CGPointMake(230.5, 201.5)];
  [bezier3Path addLineToPoint: CGPointMake(221, 173)];
  [bezier3Path addLineToPoint: CGPointMake(219, 150)];
  [bezier3Path addLineToPoint: CGPointMake(219, 126.5)];
  [bezier3Path addLineToPoint: CGPointMake(212, 137.5)];
  [bezier3Path addLineToPoint: CGPointMake(204, 145.5)];
  [bezier3Path addLineToPoint: CGPointMake(196.5, 154.5)];
  [bezier3Path addLineToPoint: CGPointMake(180, 170.5)];
  [bezier3Path addLineToPoint: CGPointMake(170, 185)];
  [bezier3Path addLineToPoint: CGPointMake(161.5, 206.5)];
  [bezier3Path addLineToPoint: CGPointMake(158.5, 232.5)];
  [bezier3Path addLineToPoint: CGPointMake(158.5, 261)];
  [bezier3Path addLineToPoint: CGPointMake(158.5, 279)];
  [strokeColor setStroke];
  bezier3Path.lineWidth = 1;
  bezier3Path.miterLimit = 4;
  bezier3Path.lineCapStyle = kCGLineCapRound;
  [bezier3Path stroke];

  
}


@end

//
//  FirstNavigationViewController.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/16/21.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UIButton *planetButton;
@property (weak, nonatomic) IBOutlet UIButton *headButton;
@property (weak, nonatomic) IBOutlet UIButton *treeButton;
@property (weak, nonatomic) IBOutlet UIButton *landscapeButton;

@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // [self.headButton setTitle:@"1111" forState: UIControlStateNormal];
  [self setupNavigationItems];
  [self setupButtons];
  // Do any additional setup after loading the view from its nib.
}
- (void)viewWillAppear:(BOOL)animated{
  [self updateStatusButton];
}
//MARK: - config navigation bar
- (void)setupNavigationItems {
  
  
  self.navigationItem.title = @"Drawing";
  //self.navigationItem.f
}
//MARK: - config buttons
- (void)setupButtons {
  
//переделать . сделать кастом button
  self.planetButton.tintColor = [UIColor colorNamed:@"LightGreenSea"];
  self.planetButton.layer.masksToBounds = NO;
  self.planetButton.layer.cornerRadius = 10;
  self.planetButton.layer.borderWidth = 1;
  self.planetButton.layer.borderColor = [UIColor blackColor].CGColor;
  self.planetButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
 // self.planetButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
  self.planetButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  
  
  self.headButton.tintColor = [UIColor colorNamed:@"LightGreenSea"];
  self.headButton.layer.masksToBounds = NO;
  self.headButton.layer.cornerRadius = 10;
  self.headButton.layer.borderWidth = 1;
  self.headButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
 // self.headButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
  self.headButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  
  self.treeButton.tintColor = [UIColor colorNamed:@"LightGreenSea"];
  self.treeButton.layer.masksToBounds = NO;
  self.treeButton.layer.cornerRadius = 10;
  self.treeButton.layer.borderWidth = 1;
  self.treeButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
 // self.treeButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
  self.treeButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  
  self.landscapeButton.tintColor = [UIColor colorNamed:@"LightGreenSea"];
  self.landscapeButton.layer.masksToBounds = NO;
  self.landscapeButton.layer.cornerRadius = 10;
  self.landscapeButton.layer.borderWidth = 1;
  self.landscapeButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
 // self.landscapeButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
  self.landscapeButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  
  
//  float shadowSize = 10.0f;
//  UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.landscapeButton.frame.origin.x - shadowSize / 2,
//                                                                         self.landscapeButton.frame.origin.y - shadowSize / 2,
//                                                                         self.landscapeButton.frame.size.width + shadowSize,
//                                                                         self.landscapeButton.frame.size.height + shadowSize)];
//  self.landscapeButton.layer.masksToBounds = NO;
//  self.landscapeButton.layer.shadowColor =  [UIColor colorNamed:@"LightGreenSea"].CGColor; //[UIColor blackColor].CGColor;
//  self.landscapeButton.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
//  self.landscapeButton.layer.shadowOpacity = 1;
//  self.landscapeButton.layer.shadowPath = shadowPath.CGPath;
  
  
  
  
//  self.landscapeButton.layer.shadowColor =  [UIColor colorNamed:@"LightGreenSea"].CGColor;
//  self.landscapeButton.layer.shadowRadius = 2.0;
//  self.landscapeButton.layer.shadowOffset = CGSizeZero;
//  self.landscapeButton.layer.shadowOpacity = 1;
  
  
  

  
  
  [ self.planetButton addTarget:self
                            action:@selector(choosePicture:)
                  forControlEvents:UIControlEventTouchDown];
  [ self.headButton addTarget:self
                            action:@selector(choosePicture:)
                  forControlEvents:UIControlEventTouchDown];
  [ self.treeButton addTarget:self
                            action:@selector(choosePicture:)
                  forControlEvents:UIControlEventTouchDown];
  [ self.landscapeButton addTarget:self
                            action:@selector(choosePicture:)
                  forControlEvents:UIControlEventTouchDown];
  
}
-(void) updateStatusButton {
  
  self.landscapeButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
  self.treeButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
  self.headButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
  self.planetButton.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
  
  switch (globalPicture) {
    case planet:
      self.planetButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
      break;
    case head:
      self.headButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
      break;
    case tree:
      self.treeButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
      break;
    case landscape:
      self.landscapeButton.layer.borderColor = [UIColor colorNamed:@"LightGreenSea"].CGColor;
      break;
      
    default:
      break;
  }
}

//MARK: - selectors
- (void)choosePicture:(UIButton *)sender{
  NSInteger tag = sender.tag;
  //Drawings.tag
  Drawings picture = tag;
  switch (picture) {
    case planet:
      globalPicture = planet;
      //NSLog(@"planet");
      break;
    case tree:
      globalPicture = tree;
      break;
    case head:
      globalPicture = head;
      break;
    case landscape:
      globalPicture = landscape;
      break;
      
    default:
      NSLog(@"something else");
      break;
  }
  [self updateStatusButton];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

//
//  ModalViewController.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/15/21.
//

#import "ModalViewController.h"

@interface ModalViewController ()
//MARK: - IBOutlet
@property (weak, nonatomic) IBOutlet DRWButton *saveButton;
@property (weak, nonatomic) IBOutlet UIView *supportView;


@property (strong, nonatomic) IBOutletCollection(PaletteButton) NSArray *palleteButtons;

@end

@implementation ModalViewController

- (void)willMoveToParentViewController:(UIViewController *)parent{
  
}
- (instancetype)init
{
  self = [super init];
  if (self) {
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.view.layer.cornerRadius = 40.0;
    
    self.supportView.backgroundColor = UIColor.whiteColor;
    self.supportView.layer.cornerRadius = 40.0;
    
    self.supportView.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1].CGColor;
    self.supportView.layer.shadowColor = [UIColor grayColor].CGColor;
    self.supportView.layer.shadowOpacity = 1;
    
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self addActions];
  
}
//MARK: - config buttons
-(void) addActions{
  [self.saveButton addTarget:self action:@selector(savePalletePressed) forControlEvents:UIControlEventTouchUpInside];
  
  for (UIButton *button in self.palleteButtons) {
    
    [button addTarget:self
               action:@selector(paletteButtonPressed:) forControlEvents:(UIControlEventTouchUpInside)];
    
  }
  
}
//MARK: - selectors
-(void) savePalletePressed{
  [self willMoveToParentViewController:nil];
  [self.view removeFromSuperview];
  [self removeFromParentViewController];
}
-(void) paletteButtonPressed:(PaletteButton *)sender{
  if ((colorsButtonSet.count <= 2) && (![colorsButtonSet containsObject:sender])) {
    [colorsButtonSet addObject:sender];
    [colorsButtonArrat addObject:sender];
    
    sender.layer.borderWidth = 1;
  } else if ([colorsButtonSet containsObject:sender]) {
    [colorsButtonSet removeObject:sender];
    //[self.colorsButtonArrat indexOfObject:sender];
    [colorsButtonArrat removeObject:sender];
    
    sender.layer.borderColor = UIColor.whiteColor.CGColor;
    sender.layer.borderWidth = 8;
    // sender.layer.backgroundColor = UIColor.yellowColor.CGColor;
  } else if (colorsButtonSet.count == 3) {
    PaletteButton *button = [colorsButtonArrat objectAtIndex:0];
    
    [colorsButtonSet removeObject:button];
    [colorsButtonArrat removeObject:button];
    button.layer.borderWidth = 8;
    
    [colorsButtonSet addObject:sender];
    [colorsButtonArrat addObject:sender];
    sender.layer.borderWidth = 1;
  }
}
@end

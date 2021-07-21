
#import "SecondViewController.h"


@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet DRWButton *planetButton;
@property (weak, nonatomic) IBOutlet DRWButton *headButton;
@property (weak, nonatomic) IBOutlet DRWButton *treeButton;
@property (weak, nonatomic) IBOutlet DRWButton *landscapeButton;

@end

@implementation SecondViewController

@synthesize drawning;

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupNavigationItems];
  [self setupButtons];
}
- (void)viewWillAppear:(BOOL)animated{
  [self updateStatusButton];
}
//MARK: - config navigation bar
- (void)setupNavigationItems {
  self.navigationItem.title = @"Drawing";
}
//MARK: - config buttons
- (void)setupButtons {
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
  [self.landscapeButton setState:active];
  [self.treeButton setState:active];
  [self.headButton setState:active];
  [self.planetButton setState:active];
  
  //switch (globalPicture) {
      switch (drawning) {
    case planet:
      [self.planetButton setState:highlighted];
      break;
    case head:
      [self.headButton setState:highlighted];
      break;
    case tree:
      [self.treeButton setState:highlighted];
      break;
    case landscape:
      [self.landscapeButton setState:highlighted];
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
      drawning = planet;
      //NSLog(@"planet");
      break;
    case tree:
      globalPicture = tree;
      drawning = tree;
      break;
    case head:
      globalPicture = head;
      drawning = head;
      break;
    case landscape:
      globalPicture = landscape;
      drawning = landscape;
      break;
      
    default:
      NSLog(@"something else");
      break;
  }
  [self updateStatusButton];
  [self.navigationController popToRootViewControllerAnimated:YES];
}


@end

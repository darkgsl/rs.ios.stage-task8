
#import "SecondViewController.h"


@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet DRWButton *planetButton;
@property (weak, nonatomic) IBOutlet DRWButton *headButton;
@property (weak, nonatomic) IBOutlet DRWButton *treeButton;
@property (weak, nonatomic) IBOutlet DRWButton *landscapeButton;

@end

@implementation SecondViewController

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
  
  switch (globalPicture) {
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
  [self.navigationController popToRootViewControllerAnimated:YES];
}
@end

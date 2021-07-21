//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/15/21.
//

#import "RootViewController.h"
#import "ModalViewController.h"
#import "SecondViewController.h"
#import "DRWButton.h"
#import "PaletteButton.h"
#import "RSSchool_T8-Swift.h"

//NSInteger ffff = 0;
//MARK: - global property
ScreenState screenState = 0;
Drawings globalPicture = 1;
NSInteger colorsCount = 0;
NSMutableArray *colorsButtonArrat;
NSMutableArray *colors ;
NSMutableSet *colorsButtonSet;
BOOL isDraw = false;
@interface RootViewController ()


//MARK: - IBOutlets
@property (weak, nonatomic) IBOutlet DRWButton *drawButton;
@property (weak, nonatomic) IBOutlet DRWButton *shareButton;
@property (weak, nonatomic) IBOutlet DRWButton *OpenTimerButton;
@property (weak, nonatomic) IBOutlet DRWButton *openPaletteButton;

@property (weak, nonatomic)  CustomUIView *canvasView;
@end

@implementation RootViewController


- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self setupNavigationItems];
  [self setupButtons];
  [self setupView];
  [self addActions];
  
  colorsButtonSet = [NSMutableSet new];
  colorsButtonArrat = [NSMutableArray new];
  
  
  TestSwiftClass *df =  [TestSwiftClass new];
  [df printName];
}
//MARK: - config canvas view
- (void)setupView {
  
  CGRect rect = CGRectMake(38, 102, 300, 300);
  CustomUIView *view = [[CustomUIView alloc] initWithFrame:rect];
  
  self.canvasView = view;
  self.canvasView.backgroundColor = UIColor.whiteColor;
  self.canvasView.layer.backgroundColor = UIColor.whiteColor.CGColor;
  self.canvasView.layer.borderWidth = 2;
  self.canvasView.layer.borderColor = [UIColor colorWithRed:0 green:0.7 blue:1 alpha:0.25].CGColor;
  self.canvasView.layer.shadowColor = [UIColor colorWithRed:0 green:0.7 blue:1 alpha:0.25].CGColor;
  self.canvasView.layer.shadowOpacity = 1;
  self.canvasView.layer.shadowOffset = CGSizeZero;
  [self.view addSubview:self.canvasView];
}

//MARK: - config buttons
-(void) addActions{
  [self.shareButton addTarget:self action:@selector(savePicturePressed) forControlEvents:UIControlEventTouchUpInside];
  //[self.savePalleteButton addTarget:self action:@selector(savePalletePressed) forControlEvents:UIControlEventTouchUpInside];
  [self.drawButton addTarget:self action:@selector(drawPicturePressed:) forControlEvents:UIControlEventTouchUpInside];
  
  [self.OpenTimerButton addTarget:self action:@selector(openTimerButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  [self.openPaletteButton addTarget:self action:@selector(openPaletteButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  
}

- (void)setupButtons {
  
  switch (screenState) {
    case idle:
      [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
      [self.drawButton setState:active];
      
      [self.shareButton setState:noActive];
      [self.OpenTimerButton setState:active];
      [self.openPaletteButton setState:active];
      break;
    case draw:
      [self.drawButton setState:noActive];
      [self.shareButton setState:noActive];
      [self.OpenTimerButton setState:noActive];
      [self.openPaletteButton setState:noActive];
      break;
    case done:
      [self.drawButton setTitle:@"Reset" forState:UIControlStateNormal];
      [self.drawButton setState:active];
      
      [self.shareButton setState:active];
      [self.OpenTimerButton setState:noActive];
      [self.openPaletteButton setState:noActive];
      break;
  }
}

//MARK: - Selectors

-(void) openTimerButtonPressed:(DRWButton *)sender{
  ModalViewController *childVC = [ModalViewController new];
  [self addChildViewController:childVC];
  CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
  childVC.view.frame = rect;
  [self.view addSubview:childVC.view];
  [childVC didMoveToParentViewController:self];
}
-(void) openPaletteButtonPressed:(DRWButton *)sender{
  ModalViewController *childVC = [ModalViewController new];
  [self addChildViewController:childVC];
  CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
  childVC.view.frame = rect;
  [self.view addSubview:childVC.view];
  [childVC didMoveToParentViewController:self];
}

-(void) savePicturePressed{
  // CGSize size = CGSizeMake(self.canvasView.bounds.size.width - 2, self.canvasView.bounds.size.height - 2);
  self.canvasView.layer.borderWidth = 0;
  
  UIGraphicsBeginImageContext(self.canvasView.bounds.size);
  [self.canvasView.layer renderInContext:UIGraphicsGetCurrentContext()];
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  
  //
  //  UIGraphicsBeginImageContext(view.bounds.size);
  //      [view.layer renderInContext:UIGraphicsGetCurrentContext()];
  //
  //      UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
  //
  //      UIGraphicsEndImageContext();
  //
  //
  //  UIImage *image = [UIImage alloc] ini
  //  self.canvasView
  //  [self
  
  //  UIImage *imageApp = [UIImage imageNamed:@"user"];
  //  UIActivity *actv = [UIActivity new];
  //  UIImage *image2 =  [UIImage allo
  //  actv.activityImage.images = [lit];
  //
  
  NSArray *items = [[NSArray alloc] initWithObjects:image, nil];
  UIActivityViewController *ac = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:(nil)];
  
  
  [self presentViewController:ac animated:YES completion:^{
    NSLog(@"HI!!!");
  }];
  self.canvasView.layer.borderWidth = 2;
  
}
-(void) drawPicturePressed:(DRWButton *)sender{
  NSString *title = [[NSString alloc] initWithFormat:@"%@",sender.titleLabel.text ];
  if ([title isEqualToString:@"Reset"]) {
    screenState = idle;
    [self setupButtons];
  } else {
    //готовим цвета для рисования
    //заполняем массив черным цветом
    UIColor *color = [UIColor blackColor];
    colors = [[NSMutableArray alloc] initWithObjects:color, color, color, nil];
    
    for (NSInteger i = 0; i < colorsButtonArrat.count; i += 1) {
      UIButton *button = colorsButtonArrat[i];
      UIColor *color = [UIColor colorWithCGColor:button.layer.backgroundColor];
      colors[i] = color;
    }
    
    isDraw = true;
    screenState = done;
    [self setupButtons];
    
  }
  [self.canvasView.layer setNeedsDisplay];
  
}

//MARK: - config navigation bar
- (void)setupNavigationItems {
  self.navigationItem.title = @"Artist";
  UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"Drawing"
                                                           style:UIBarButtonItemStylePlain
                                                          target:self
                                                          action:@selector(nextTapped:)];
  self.navigationItem.rightBarButtonItems = @[next];
}

//MARK: - Selectors navigation bar
- (void)nextTapped:(id)sender {
  SecondViewController *viewController = [SecondViewController new];
  viewController.drawning = globalPicture;
  
  [self.navigationController pushViewController:viewController animated:YES];
}

- (void)backToRootTapped:(id)sender {
  [self.navigationController popToRootViewControllerAnimated:YES];
}


@end

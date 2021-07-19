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
//@property (nonatomic, strong) NSMutableSet *colorsButtonSet;
//@property (nonatomic, strong) NSMutableArray *colorsButtonArrat;

//MARK: - IBOutlets
@property (weak, nonatomic) IBOutlet DRWButton *drawButton;
@property (weak, nonatomic) IBOutlet DRWButton *shareButton;
@property (weak, nonatomic) IBOutlet DRWButton *OpenTimerButton;
@property (weak, nonatomic) IBOutlet DRWButton *openPaletteButton;

@property (weak, nonatomic)  CustomUIView *canvasView;
@property (weak, nonatomic) IBOutlet UIView *palleteView;


@property (weak, nonatomic) IBOutlet DRWButton *savePalleteButton;
@property (strong, nonatomic) IBOutletCollection(PaletteButton) NSArray *paletteButtons;


@end

@implementation RootViewController
//MARK: - IBAction
- (IBAction)testButton:(id)sender {
  
  ModalViewController *childVC = [ModalViewController new];
  [self addChildViewController:childVC];
  CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
  childVC.view.frame = rect;
  [self.view addSubview:childVC.view];
  [childVC didMoveToParentViewController:self];
  
  //[self presentViewController:childVC animated:true completion:nil];
  
  
  
  //[self setupModalView];
}

- (void)viewDidLoad {
  [super viewDidLoad];

  [self setupNavigationItems];
  [self setupButtons];
  [self setupView];
  [self addActions];
  
  
  colorsButtonSet = [NSMutableSet new];
colorsButtonArrat = [NSMutableArray new];
  
  //заполняем массив черным цветом
//UIColor *color = [UIColor blackColor];
 // colors = [[NSMutableArray alloc] initWithObjects:color, color, color, nil];
  
}
//MARK: - config canvas view
- (void)setupView {
  [self.palleteView setHidden:true];
  
  
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
  /*
  for (UIButton *button in self.paletteButtons) {
   // button.tintColor = [UIColor colorWithHex:littleBoyBlueHex alpha:1.0];
   // button.layer.borderColor = [UIColor colorWithHex:littleBoyBlueHex alpha:1.0].CGColor;
   // button.layer.borderWidth = 1.5;
   // button.layer.cornerRadius = button.frame.size.height / 2 ;
    
    //actions
    //переделать селектор в отдельную переменную как раньше см уроки
    [button addTarget:self
               action:@selector(paletteButtonPressed:) forControlEvents:(UIControlEventTouchUpInside)];
    
  }
 */
  
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
  
//  [self.drawButton addTarget:self action:@selector(drawPicture) forControlEvents:UIControlEventTouchUpInside];

}

//MARK: - modalView
-(void) setupModalView{
//  ModalViewController *modalViewController = [ModalViewController new];
//  [self addChildViewController:modalViewController];
  /*
  
  ModalViewController *modalViewController = [ModalViewController new];
  //self presentedViewController
  
  [self presentViewController:modalViewController animated:YES completion:^{
    NSLog(@"HI!!!");
  }];
  
  
*/
  /*
  CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
 // UIView *modalView2 = [[UIView alloc] ];
  UIView *modalView = [[UIView alloc] initWithFrame:rect];
  modalView.backgroundColor = UIColor.whiteColor;
  modalView.layer.cornerRadius = 40.0;
  
  modalView.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1].CGColor;
  
  //  self.landscapeButton.layer.shadowColor =  [UIColor colorNamed:@"LightGreenSea"].CGColor;
  
  
  modalView.layer.shadowColor = [UIColor grayColor].CGColor;
  modalView.layer.shadowOpacity = 1;
  
  //  modalView.layer.shadowRadius = 8.0;
  //  modalView.layer.shadowOffset = CGSizeMake(8, 0);
  //  modalView.layer.shadowOpacity = 1;
  
  self.palleteView = modalView;
  [self.view addSubview:modalView];
  [self.palleteView setHidden:false];
  */
  [self.palleteView setHidden:false];
  
  CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
  [self.palleteView setFrame:rect];
  self.palleteView.backgroundColor = UIColor.whiteColor;
  self.palleteView.layer.cornerRadius = 40.0;
  
  self.palleteView.layer.borderColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1].CGColor;
  self.palleteView.layer.shadowColor = [UIColor grayColor].CGColor;
  self.palleteView.layer.shadowOpacity = 1;
  [self.view bringSubviewToFront:self.palleteView];
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
-(void) paletteButtonPressed:(PaletteButton *)sender{

 ///if
  /*
  if ((self.colorsButtonSet.count <= 2) && (![self.colorsButtonSet containsObject:sender])) {
      [self.colorsButtonSet addObject:sender];
    [colorsButtonArrat addObject:sender];
    
      sender.layer.borderWidth = 1;
  } else if ([self.colorsButtonSet containsObject:sender]) {
    [self.colorsButtonSet removeObject:sender];
    //[self.colorsButtonArrat indexOfObject:sender];
    [colorsButtonArrat removeObject:sender];
    
    sender.layer.borderColor = UIColor.whiteColor.CGColor;
    sender.layer.borderWidth = 8;
   // sender.layer.backgroundColor = UIColor.yellowColor.CGColor;
  } else if (self.colorsButtonSet.count == 3) {
    PaletteButton *button = [colorsButtonArrat objectAtIndex:0];
    
    [self.colorsButtonSet removeObject:button];
    [colorsButtonArrat removeObject:button];
    button.layer.borderWidth = 8;
    
     [self.colorsButtonSet addObject:sender];
   [colorsButtonArrat addObject:sender];
    sender.layer.borderWidth = 1;
  
  }
  
 */
  
//  for (NSInteger i = 0; i < colorsButtonArrat.count; i += 1) {
//    UIButton *button = colorsButtonArrat[i];
//    NSLog(@"%@", button.layer.backgroundColor);
//  }
//
  
  //[self.colorsButtonSet addObject:sender];
  
  
}

/*
-(void) savePalletePressed{
  [self.palleteView setHidden:true];
}
*/

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
  
 // (activityItems: image, applicationActivities: nil)
  [self presentViewController:ac animated:YES completion:^{
    NSLog(@"HI!!!");
  }];
  self.canvasView.layer.borderWidth = 2;
//  present(ac, animated: true)
//  presen
  
  //UIActivityViewController *AVC = [UIActivityViewController alloc] in
  
  //UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
}
-(void) drawPicturePressed:(DRWButton *)sender{
  //UIButton
  NSString *title = [[NSString alloc] initWithFormat:@"%@",sender.titleLabel.text ];
  if ([title isEqualToString:@"Reset"]) {
    screenState = idle;
    [self setupButtons];
    //[self.canvasView.layer setNeedsDisplay];
    
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
 // NSLog(@"drawPicture");
  // UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  //CGRect rect = CGRectMake(10, 10, 100, 100);
  //UIBezierPath* bezierPath = [UIBezierPath bezierPathWithRect:rect];
  //[self.canvasView drawRect:rect];
  //setNeedsDisplay
  
  
  //[self.canvasView.layer setNeedsDisplay];
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
  [self.navigationController pushViewController:viewController animated:YES];
}

- (void)backToRootTapped:(id)sender {
  [self.navigationController popToRootViewControllerAnimated:YES];
}


@end

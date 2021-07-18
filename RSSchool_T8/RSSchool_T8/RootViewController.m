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

NSInteger ffff = 0;
Drawings globalPicture = 0;
@interface RootViewController ()
//@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet DRWButton *shareButton;

//@property (weak, nonatomic) IBOutlet CustomUIView *canvasView;
@property (weak, nonatomic)  CustomUIView *canvasView;

@end

@implementation RootViewController
//MARK: - IBAction
- (IBAction)testButton:(id)sender {
  [self setupModalView];
}

- (void)viewDidLoad {
  [super viewDidLoad];

  [self setupNavigationItems];
  [self setupButtons];
  [self setupView];
  
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

- (void)setupButtons {
  [self.drawButton addTarget:self action:@selector(drawPicture) forControlEvents:UIControlEventTouchUpInside];
  
  //  button.addTarget(self, action: #selector(printMessage(_:)), for: .touchUpInside)
}

//MARK: - modalView
-(void) setupModalView{
  CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
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
  
  [self.view addSubview:modalView];
  
}


//MARK: - Selectors
-(void) drawPicture{
  NSLog(@"drawPicture");
  // UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  CGRect rect = CGRectMake(10, 10, 100, 100);
  UIBezierPath* bezierPath = [UIBezierPath bezierPathWithRect:rect];
  [self.canvasView drawRect:rect];
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

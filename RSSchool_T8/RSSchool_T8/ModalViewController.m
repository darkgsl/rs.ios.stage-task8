//
//  ModalViewController.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/15/21.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController
- (IBAction)saveButton:(id)sender {
  [self.presentingViewController dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

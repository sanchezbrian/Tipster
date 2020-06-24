//
//  SettingsViewController.m
//  Tipster
//
//  Created by Brian Sanchez on 6/23/20.
//  Copyright © 2020 Brian Sanchez. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger intValue = [defaults integerForKey:@"defaults_tip_percentage"];
    self.tipControl.selectedSegmentIndex = intValue;
}
- (IBAction)defaultTip:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    double tipPercentage =  self.tipControl.selectedSegmentIndex;
    
    [defaults setInteger:tipPercentage forKey:@"defaults_tip_percentage"];
    [defaults synchronize];
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

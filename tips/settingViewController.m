//
//  settingViewController.m
//  tips
//
//  Created by Yan-Hsiang Huang on 6/11/15.
//  Copyright (c) 2015 Yan-Hsiang Huang. All rights reserved.
//

#import "settingViewController.h"

@interface settingViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *settingTipControl;
- (IBAction)updateSettingTip:(id)sender;

@end

@implementation settingViewController

NSString *TIP_KEY = @"defaultTipPercentage";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedSegmentIndex = [defaults floatForKey:TIP_KEY];
    [self.settingTipControl setSelectedSegmentIndex: selectedSegmentIndex];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateSettingTip:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.settingTipControl.selectedSegmentIndex forKey:TIP_KEY];
    [defaults synchronize];
}
@end

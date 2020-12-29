/*
 * Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "SettingViewController.h"

@interface SettingViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)saveBtnClick:(UIButton *)sender {
    [self.textField resignFirstResponder];
    if (self.textField.text.length<=0) {
        [HToast showMessage:@"Please enter your favorite sport."];
        return;
    }
    
    // TODO: save favorite sport by user setUserProperty
    [HiAnalytics setUserProfile:@"favor_sport" setValue:self.textField.text];
    [HToast showMessage:@"Set user profile success."];
}


- (IBAction)clearCacheBtnClick:(UIButton *)sender {
    // TODO: clear cached dada
    [HiAnalytics clearCachedData];
    [HToast showMessage:@"Clear cache success."];
}

@end

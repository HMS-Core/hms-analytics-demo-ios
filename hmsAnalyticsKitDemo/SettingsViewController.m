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

#import "SettingsViewController.h"
#import "HiAnalytics/HiAnalytics.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UIButton *submit;

@property (weak, nonatomic) IBOutlet UIButton *back;

@property (weak, nonatomic) IBOutlet UITextField *sex;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *favor;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
      [_submit addTarget:self action:@selector(settings) forControlEvents:UIControlEventTouchUpInside];
    
     [_back addTarget:self action:@selector(backButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
   
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)settings{
    if(_sex.text){
           [HiAnalytics setUserProfile:@"user_sex" setValue:_sex.text];
       }
    if(_age.text){
           [HiAnalytics setUserProfile:@"user_age" setValue:_age.text];
       }
    if(_favor.text){
           [HiAnalytics setUserProfile:@"user_favor" setValue:_favor.text];
       }
}

- (void)backButtonPressed:(id)sender{
  [self dismissViewControllerAnimated:true completion:nil];
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

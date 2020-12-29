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

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) NSArray *questionsArray;
@property (strong, nonatomic) NSArray *answersArray;
@property (assign, nonatomic) NSInteger curQuqestionIndex;
@property (assign, nonatomic) NSInteger score;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questionsArray = @[@"The largest planet in the solar system is Jupiter",
                            @"The first Olympic Games were held in Athens, Greece",
                            @"The violin has 6 strings",
                            @"Flying bats belong to birds",
                            @"Sound spreads faster in the water than in the air"];
    self.answersArray = @[@1,@1,@0,@0,@1];
    
    self.questionLabel.text = self.questionsArray[self.curQuqestionIndex];
}

- (IBAction)trueBtnClick:(UIButton *)sender {
    [self checkAnswer:true];
    [self reportAnswerEvt:@"true"];
}

- (IBAction)falseBtnClick:(UIButton *)sender {
    [self checkAnswer:false];
    [self reportAnswerEvt:@"false"];
}

- (IBAction)postScoreBtnClick:(UIButton *)sender {
    // TODO: Report score by using SUBMITSCORE Event
    NSDictionary *parms = @{kHAParamScore:[NSNumber numberWithInteger:self.score]};
    // Report a preddefined Event
    [HiAnalytics onEvent:kHAEventSubmitScore setParams:parms];
    [HToast showMessage:@"Post score success."];
}

- (IBAction)nextBtnClick:(UIButton *)sender {
    self.curQuqestionIndex = (self.curQuqestionIndex+1)%self.questionsArray.count;
    self.questionLabel.text = self.questionsArray[self.curQuqestionIndex];
}

- (void)checkAnswer:(BOOL)answer {
    NSNumber *answerNum = self.answersArray[self.curQuqestionIndex];
    if (answer == [answerNum boolValue]) {
        self.score = self.score + 20;
        [HToast showMessage:@"The answer is correct."];
        // TODO: Report a customized Event
        
    } else {
        [HToast showMessage:@"The answer is wrong."];
        // TODO: Report a customized Event
        
    }
}

- (void)reportAnswerEvt:(NSString *)answer {
    // TODO: Report a customzied Event
    // Event Name: Answer
    // Event Parameters:
    //  -- question: String
    //  -- answer:String
    //  -- answerTime: String
    
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *answerTime=[dateFormat stringFromDate:[NSDate date]];
    
    NSDictionary *parms = @{@"question":self.questionsArray[self.curQuqestionIndex],
                            @"answer":answer,
                            @"answerTime":answerTime};
    // Report a customzied Event
    [HiAnalytics onEvent:@"Answer" setParams:parms];
}

@end

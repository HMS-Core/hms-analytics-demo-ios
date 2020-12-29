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

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    let questionsArray:Array = ["The largest planet in the solar system is Jupiter",
                                 "The first Olympic Games were held in Athens, Greece",
                                 "The violin has 6 strings",
                                 "Flying bats belong to birds",
                                 "Sound spreads faster in the water than in the air"];
    let answersArray:Array = [true,true,false,false,true];
    var curQuqestionIndex:Int = 0;
    var score:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.questionLabel.text = self.questionsArray[self.curQuqestionIndex];
    }
    
    @IBAction func trueBtnClick(_ sender: UIButton) {
        self.checkAnswer(answer: true);
        self.reportAnswerEvt(answer: "true");
    }
    
    @IBAction func falseBtnClick(_ sender: UIButton) {
        self.checkAnswer(answer: false);
        self.reportAnswerEvt(answer: "false");
    }
    
    @IBAction func postScoreBtnClick(_ sender: UIButton) {
        // TODO: Report score by using SUBMITSCORE Event
        let parms:Dictionary = [kHAParamScore:self.score];
        // Report a preddefined Event
        HiAnalytics.onEvent(kHAEventSubmitScore, setParams: parms);
        HToast.showMessage("Post score success.");
    }
    
    @IBAction func nextBtnClick(_ sender: UIButton) {
        self.curQuqestionIndex = (self.curQuqestionIndex+1)%self.questionsArray.count;
        self.questionLabel.text = self.questionsArray[self.curQuqestionIndex];
    }
    
    func checkAnswer(answer:Bool) {
        let rightAnswer:Bool = self.answersArray[self.curQuqestionIndex];
        if answer == rightAnswer {
            self.score = self.score + 20;
            HToast.showMessage("The answer is correct.");
            
        }else{
            HToast.showMessage("The answer is wrong.");
        }
    }
    
    func reportAnswerEvt(answer:String) {
        // TODO: Report a customzied Event
        // Event Name: Answer
        // Event Parameters:
        //  -- question: String
        //  -- answer:String
        //  -- answerTime: String
        
        let dateFormat:DateFormatter = DateFormatter();
        dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss";
        let answerTime :String = dateFormat.string(for: Date())!;
        
        let parms : Dictionary = ["question":self.questionsArray[self.curQuqestionIndex],
            "answer":answer,"answerTime":answerTime];
        HiAnalytics.onEvent("Answer", setParams: parms);
    }
}

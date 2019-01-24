//
//  ViewController.swift
//  QuizMaker
//
//  Created by 90304593 on 1/19/19.
//  Copyright © 2019 90304593. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionsFinished = false
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textFieldA: UITextField!
    @IBOutlet weak var textFieldB: UITextField!
    @IBOutlet weak var textFieldC: UITextField!
    @IBOutlet weak var textFieldD: UITextField!
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelC: UILabel!
    @IBOutlet weak var labelD: UILabel!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    var isDoneAnswering = false
    
    @IBOutlet weak var topLabel: UILabel!
    
    var inputAnswers: [String] = ["", "", "", "", "", "", "", "", "", ""]
    
    var q1Answers: [String] = ["", "", "", "", ""]
    var q2Answers: [String] = ["", "", "", "", ""]
    var q3Answers: [String] = ["", "", "", "", ""]
    var q4Answers: [String] = ["", "", "", "", ""]
    var q5Answers: [String] = ["", "", "", "", ""]
    var q6Answers: [String] = ["", "", "", "", ""]
    var q7Answers: [String] = ["", "", "", "", ""]
    var q8Answers: [String] = ["", "", "", "", ""]
    var q9Answers: [String] = ["", "", "", "", ""]
    var q10Answers: [String] = ["", "", "", "", ""]
    
    var input = ""
    var questionNumber = 0
    var totalQuestions = 0
    var nextReady = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func QuestionsInput(_ sender: Any) {
        self.view.endEditing(true)
        if(totalQuestions == 0){
        input = textField1.text!
        totalQuestions = Int(input)!
        }
    }
    @IBAction func answerAInput(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBAction func answerBInput(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBAction func answerCInput(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBAction func answerDInput(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    
    
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        proceed()
    }
    
    func proceed(){
        if (questionNumber == 0 && !questionsFinished){
            textField1.text = ""
            textFieldA.isHidden = false
            textFieldB.isHidden = false
            textFieldC.isHidden = false
            textFieldD.isHidden = false
            labelA.isHidden = false
            labelB.isHidden = false
            labelC.isHidden = false
            labelD.isHidden = false
            questionNumber += 1
            topLabel.text = "Question " +  String(questionNumber)
        } else if (questionNumber < totalQuestions && !questionsFinished){
            answerUpdate()
            textField1.text = ""
            textFieldA.text = ""
            textFieldB.text = ""
            textFieldC.text = ""
            textFieldD.text = ""
            questionNumber += 1
            topLabel.text = "Question " +  String(questionNumber)
        } else if (questionNumber == totalQuestions && !isDoneAnswering){
            if (questionsFinished){
                isDoneAnswering = true
            }
            questionsFinished = true
            questionNumber = 0
            textField1.text = ""
            textFieldA.text = ""
            textFieldB.text = ""
            textFieldC.text = ""
            textFieldD.text = ""
            labelA.text = ""
            labelB.text = ""
            labelC.text = ""
            labelD.text = ""
            textField1.isHidden = true
            textFieldA.isHidden = true
            textFieldB.isHidden = true
            textFieldC.isHidden = true
            textFieldD.isHidden = true
            topLabel.text = "Hit \"Next\" to proceed"
        } else if (questionNumber < totalQuestions){
            buttonA.isHidden = false
            buttonB.isHidden = false
            buttonC.isHidden = false
            buttonD.isHidden = false
            questionNumber += 1
            displayAnswers()
        } else if (questionNumber == totalQuestions){
            print(inputAnswers)
            topLabelList(A: inputAnswers)
            buttonA.isHidden = true
            buttonB.isHidden = true
            buttonC.isHidden = true
            buttonD.isHidden = true
            labelA.isHidden = true
            labelB.isHidden = true
            labelC.isHidden = true
            labelD.isHidden = true
            
        }
        else{
            print("BROKEN")
        }
    }
    func answerUpdate(){
        if (questionNumber == 1){
            print("array 1 gettin filled up yessir")
            q1Answers[0] = textFieldA.text!
            q1Answers[1] = textFieldB.text!
            q1Answers[2] = textFieldC.text!
            q1Answers[3] = textFieldD.text!
            q1Answers[4] = textField1.text!
        } else if (questionNumber == 2){
            q2Answers[0] = textFieldA.text!
            q2Answers[1] = textFieldB.text!
            q2Answers[2] = textFieldC.text!
            q2Answers[3] = textFieldD.text!
            q2Answers[4] = textField1.text!
        } else if (questionNumber == 3){
            q3Answers[0] = textFieldA.text!
            q3Answers[1] = textFieldB.text!
            q3Answers[2] = textFieldC.text!
            q3Answers[3] = textFieldD.text!
            q3Answers[4] = textField1.text!
        } else if (questionNumber == 4){
            q4Answers[0] = textFieldA.text!
            q4Answers[1] = textFieldB.text!
            q4Answers[2] = textFieldC.text!
            q4Answers[3] = textFieldD.text!
            q4Answers[4] = textField1.text!
        } else if (questionNumber == 5){
            q5Answers[0] = textFieldA.text!
            q5Answers[1] = textFieldB.text!
            q5Answers[2] = textFieldC.text!
            q5Answers[3] = textFieldD.text!
            q5Answers[4] = textField1.text!
        } else if (questionNumber == 6){
            q6Answers[0] = textFieldA.text!
            q6Answers[1] = textFieldB.text!
            q6Answers[2] = textFieldC.text!
            q6Answers[3] = textFieldD.text!
            q6Answers[4] = textField1.text!
        } else if (questionNumber == 7){
            q7Answers[0] = textFieldA.text!
            q7Answers[1] = textFieldB.text!
            q7Answers[2] = textFieldC.text!
            q7Answers[3] = textFieldD.text!
            q7Answers[4] = textField1.text!
        } else if (questionNumber == 8){
            q8Answers[0] = textFieldA.text!
            q8Answers[1] = textFieldB.text!
            q8Answers[2] = textFieldC.text!
            q8Answers[3] = textFieldD.text!
            q8Answers[4] = textField1.text!
        } else if (questionNumber == 9){
            q9Answers[0] = textFieldA.text!
            q9Answers[1] = textFieldB.text!
            q9Answers[2] = textFieldC.text!
            q9Answers[3] = textFieldD.text!
            q9Answers[4] = textField1.text!
        } else if (questionNumber == 10){
            q10Answers[0] = textFieldA.text!
            q10Answers[1] = textFieldB.text!
            q10Answers[2] = textFieldC.text!
            q10Answers[3] = textFieldD.text!
            q10Answers[4] = textField1.text!
        }
    }
    func displayAnswers(){
        print("Q number: " + String(questionNumber))
        if(questionNumber == 1){
            topLabel.text = q1Answers[4]
            labelA.text = q1Answers[0]
            labelB.text = q1Answers[1]
            labelC.text = q1Answers[2]
            labelD.text = q1Answers[3]
        } else if (questionNumber == 2){
            topLabel.text = q2Answers[4]
            labelA.text = q2Answers[0]
            labelB.text = q2Answers[1]
            labelC.text = q2Answers[2]
            labelD.text = q2Answers[3]
        } else if (questionNumber == 3){
            topLabel.text = q3Answers[4]
            labelA.text = q3Answers[0]
            labelB.text = q3Answers[1]
            labelC.text = q3Answers[2]
            labelD.text = q3Answers[3]
        } else if (questionNumber == 4){
            topLabel.text = q4Answers[4]
            labelA.text = q4Answers[0]
            labelB.text = q4Answers[1]
            labelC.text = q4Answers[2]
            labelD.text = q4Answers[3]
        } else if (questionNumber == 5){
            topLabel.text = q5Answers[4]
            labelA.text = q5Answers[0]
            labelB.text = q5Answers[1]
            labelC.text = q5Answers[2]
            labelD.text = q5Answers[3]
        } else if (questionNumber == 6){
            topLabel.text = q6Answers[4]
            labelA.text = q6Answers[0]
            labelB.text = q6Answers[1]
            labelC.text = q6Answers[2]
            labelD.text = q6Answers[3]
        } else if (questionNumber == 7){
            topLabel.text = q7Answers[4]
            labelA.text = q7Answers[0]
            labelB.text = q7Answers[1]
            labelC.text = q7Answers[2]
            labelD.text = q7Answers[3]
        } else if (questionNumber == 8){
            topLabel.text = q8Answers[4]
            labelA.text = q8Answers[0]
            labelB.text = q8Answers[1]
            labelC.text = q8Answers[2]
            labelD.text = q8Answers[3]
        } else if (questionNumber == 9){
            topLabel.text = q9Answers[4]
            labelA.text = q9Answers[0]
            labelB.text = q9Answers[1]
            labelC.text = q9Answers[2]
            labelD.text = q9Answers[3]
        } else if (questionNumber == 10){
            topLabel.text = q10Answers[4]
            labelA.text = q10Answers[0]
            labelB.text = q10Answers[1]
            labelC.text = q10Answers[2]
            labelD.text = q10Answers[3]
        }
    }
    
    func topLabelList(A: [String]){
        for i in A {
            topLabel.text = topLabel.text ?? "" + i + ", "
        }
        
    }
    
    @IBAction func buttonAPressed(_ sender: Any) {
        inputAnswers[questionNumber - 1] = "A"
    }
    @IBAction func buttonBPressed(_ sender: Any) {
        inputAnswers[questionNumber - 1] = "B"
    }
    @IBAction func buttonCPressed(_ sender: Any) {
        inputAnswers[questionNumber - 1] = "C"
    }
    @IBAction func buttonDPressed(_ sender: Any) {
        inputAnswers[questionNumber - 1] = "D"
    }
    
    

}


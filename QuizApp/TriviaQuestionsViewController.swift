//
//  TriviaQuestionsViewController.swift
//  TrueFalseStarter
//
//  Created by Alexander Nelson on 9/6/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class TriviaQuestionsViewController: UIViewController {

    let questionsPerRound = 5
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion: Int = 0
    var time: Int?
    var count = 30
    var timer = NSTimer()
    var gameSound: SystemSoundID = 0
    var gameQuestions = [Question]()
    

    @IBOutlet weak var questionFieldLabel: UILabel!
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        optionOneButton.layer.cornerRadius = 5
        optionTwoButton.layer.cornerRadius = 5
        optionThreeButton.layer.cornerRadius = 5
        optionFourButton.layer.cornerRadius = 5
        nextQuestionButton.layer.cornerRadius = 5
        playAgainButton.layer.cornerRadius = 5
        
        resetGame()
        displayQuestion()
    }
    
    //MARK: Helper methods
    func displayQuestion() {
        if gameQuestions.count > 0 {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(gameQuestions.count)
            let selectedQuestion = gameQuestions.removeAtIndex(indexOfSelectedQuestion)
            questionFieldLabel.text = selectedQuestion.question
            optionOneButton.setTitle(selectedQuestion.answers[0], forState: .Normal)
            optionTwoButton.setTitle(selectedQuestion.answers[1], forState: .Normal)
            
            optionThreeButton.setTitle(selectedQuestion.answers[2], forState: .Normal)
            
            optionFourButton.setTitle(selectedQuestion.answers[3], forState: .Normal)
            playAgainButton.hidden = true
        }
    }
    
    func resetGame() {
        gameQuestions += questions
    }
}


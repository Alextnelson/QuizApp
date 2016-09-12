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
    var selectedQuestion: Question?
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
    
    

    @IBAction func Option1Selected(sender: UIButton) {
        questionsAsked += 1
        checkAnswer(sender)
    }
    
    @IBAction func option2Selected(sender: UIButton) {
        questionsAsked += 1
        checkAnswer(sender)
    }
    @IBAction func option3Selected(sender: UIButton) {
        questionsAsked += 1
        checkAnswer(sender)
    }
    
    @IBAction func option4Selected(sender: UIButton) {
        questionsAsked += 1
        checkAnswer(sender)
    }
    
    @IBAction func displayNextQuestion(sender: UIButton) {
        nextRound()
    }
    
    @IBAction func startGameOver(sender: UIButton) {
        // Display the answer buttons again
        optionOneButton.hidden = false
        optionTwoButton.hidden = false
        optionThreeButton.hidden = false
        optionFourButton.hidden = false
        nextQuestionButton.hidden = false
        
        // Hide play again button
        playAgainButton.hidden = true
        resetGame()
        displayQuestion()
    }
    
    
    //MARK: Helper methods
    func displayQuestion() {
        if gameQuestions.count > 0 {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(gameQuestions.count)
           self.selectedQuestion = gameQuestions.removeAtIndex(indexOfSelectedQuestion)
            questionFieldLabel.text = selectedQuestion!.question
            questionFieldLabel.textColor = UIColor.whiteColor()
            optionOneButton.setTitle(selectedQuestion!.answers[0], forState: .Normal)
            optionTwoButton.setTitle(selectedQuestion!.answers[1], forState: .Normal)
            optionThreeButton.setTitle(selectedQuestion!.answers[2], forState: .Normal)
            optionFourButton.setTitle(selectedQuestion!.answers[3], forState: .Normal)
            playAgainButton.hidden = true
            print(optionOneButton.currentTitle)
        } else {
            resetGame()
        }
    }
    
    func resetGame() {
        gameQuestions += questions
        correctQuestions = 0
        questionsAsked = 0
        makeOptionButtonsActive()
    }
    
    func checkAnswer(button: UIButton) {
        if button.currentTitle == selectedQuestion!.correctAnswer {
            correctQuestions += 1
            questionFieldLabel.text = "Correct!"
            questionFieldLabel.textColor = UIColor.greenColor()
            makeOptionButtonsInactive()
        } else {
            questionFieldLabel.text = "Sorry, wrong answer. The correct answer was \(selectedQuestion!.correctAnswer)."
            questionFieldLabel.textColor = UIColor.grayColor()
            makeOptionButtonsInactive()
        }
    }
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            makeOptionButtonsActive()
            displayQuestion()
        }
    }
    
    func displayScore() {
        // Hide the answer buttons
        optionOneButton.hidden = true
        optionTwoButton.hidden = true
        optionThreeButton.hidden = true
        optionFourButton.hidden = true
        nextQuestionButton.hidden = true
        
        // Display play again button
        playAgainButton.hidden = false
        
        questionFieldLabel.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        questionFieldLabel.textColor = UIColor.whiteColor()
    }
    
    func makeOptionButtonsInactive() {
        optionOneButton.enabled = false
        optionTwoButton.enabled = false
        optionThreeButton.enabled = false
        optionFourButton.enabled = false
    }
    
    func makeOptionButtonsActive() {
        optionOneButton.enabled = true
        optionTwoButton.enabled = true
        optionThreeButton.enabled = true
        optionFourButton.enabled = true
    }
}


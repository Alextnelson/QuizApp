//
//  QuestionModel.swift
//  QuizApp
//
//  Created by Alexander Nelson on 9/8/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//


struct QuestionModel {
    static var isCorrectChoice: Bool = true
    let triviaQuestions: [[String : [[String : Bool]]]] =
        [
            ["This was the only US President to serve more than two consecutive terms." : [
                    ["George Washington" : !isCorrectChoice],
                    ["Franklin D. Roosevelt" : isCorrectChoice],
                    ["Woodrow Wilson" : !isCorrectChoice],
                    ["Andrew Jackson" : !isCorrectChoice]
                ]
            ],
            ["Which of the following countries has the most residents?" :
                [
                    ["Nigeria" : isCorrectChoice],
                    ["Russia" : !isCorrectChoice],
                    ["Iran" : !isCorrectChoice],
                    ["Vietnam" : !isCorrectChoice]
                ]
            ],
            ["In what year was the United Nations founded?" :
                [
                    ["1918" : !isCorrectChoice],
                    ["1919" : !isCorrectChoice],
                    ["1945" : isCorrectChoice],
                    ["1954" : !isCorrectChoice]
                ]
            ],
            ["The Titanic departed from the United Kingdom, where was it supposed to arrive?" :
                [
                    ["Paris" : !isCorrectChoice],
                    ["Washington D.C." : !isCorrectChoice],
                    ["New York City" : isCorrectChoice],
                    ["Boston" : !isCorrectChoice]
                ]
            ],
            ["Which nation produces the most oil?" :
                [
                    ["Iran" : !isCorrectChoice],
                    ["Iraq" : !isCorrectChoice],
                    ["Brazil" : !isCorrectChoice],
                    ["Canada" : isCorrectChoice]
                ]
            ],
            ["Which country has most recently won consecutive World Cups in Soccer?" :
                [
                    ["Italy" : !isCorrectChoice],
                    ["Brazil" : isCorrectChoice],
                    ["Argentina" : !isCorrectChoice],
                    ["Spain" : !isCorrectChoice]
                ]
            ],
            ["Which of the following rivers is longest?" :
                [
                    ["Yangtze" : !isCorrectChoice],
                    ["Mississippi" : isCorrectChoice],
                    ["Congo" : !isCorrectChoice],
                    ["Mekong" : !isCorrectChoice]
                ]
            ],
            ["Which city is the oldest?" :
                [
                    ["Mexico City" : isCorrectChoice],
                    ["Cape Town" : !isCorrectChoice],
                    ["San Juan" : !isCorrectChoice],
                    ["Sydney" : !isCorrectChoice]
                ]
            ],
            ["Which country was the first to allow women to vote in national elections?" :
                [
                    ["New Zealand" : isCorrectChoice],
                    ["United States" : !isCorrectChoice],
                    ["Sweden" : !isCorrectChoice],
                    ["Senegal" : !isCorrectChoice]
                ]
            ],
            ["Which of these countries won the most medals in the 2012 Summer Games?" :
                [
                    ["France" : !isCorrectChoice],
                    ["Germany" : !isCorrectChoice],
                    ["Japan" : !isCorrectChoice],
                    ["Great Britain" : isCorrectChoice]
                ]
            ]
        ]

}






//@IBAction func checkAnswer(sender: UIButton) {
//    // Increment the questions asked counter
//    questionsAsked += 1
//
//    let selectedQuestionDict = trivia[indexOfSelectedQuestion]
//    let correctAnswer = selectedQuestionDict["Answer"]
//
//    if (sender === trueButton &&  correctAnswer == "True") || (sender === falseButton && correctAnswer == "False") {
//        correctQuestions += 1
//        questionField.text = "Correct!"
//    } else {
//        questionField.text = "Sorry, wrong answer!"
//    }


//import Foundation
//
//
//let questionsPerRound = 4
//var questionsAsked = 0
//var correctQuestions = 0
//var indexOfSelectedQuestion: Int = 0
//
//var gameSound: SystemSoundID = 0
//
//let trivia: [[String : String]] = [
//    ["Question": "Only female koalas can whistle", "Answer": "False"],
//    ["Question": "Blue whales are technically whales", "Answer": "True"],
//    ["Question": "Camels are cannibalistic", "Answer": "False"],
//    ["Question": "All ducks are birds", "Answer": "True"]
//]
//
//
//func displayQuestion() {
//    indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(trivia.count)
//    let questionDictionary = trivia[indexOfSelectedQuestion]
//    questionField.text = questionDictionary["Question"]
//    playAgainButton.hidden = true
//}
//
//func displayScore() {
//    // Hide the answer buttons
//    trueButton.hidden = true
//    falseButton.hidden = true
//
//    // Display play again button
//    playAgainButton.hidden = false
//
//    questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
//
//}
//
//@IBAction func checkAnswer(sender: UIButton) {
//    // Increment the questions asked counter
//    questionsAsked += 1
//
//    let selectedQuestionDict = trivia[indexOfSelectedQuestion]
//    let correctAnswer = selectedQuestionDict["Answer"]
//
//    if (sender === trueButton &&  correctAnswer == "True") || (sender === falseButton && correctAnswer == "False") {
//        correctQuestions += 1
//        questionField.text = "Correct!"
//    } else {
//        questionField.text = "Sorry, wrong answer!"
//    }
//
//    loadNextRoundWithDelay(seconds: 2)
//}
//
//func nextRound() {
//    if questionsAsked == questionsPerRound {
//        // Game is over
//        displayScore()
//    } else {
//        // Continue game
//        displayQuestion()
//    }
//}
//
//@IBAction func playAgain() {
//    // Show the answer buttons
//    trueButton.hidden = false
//    falseButton.hidden = false
//
//    questionsAsked = 0
//    correctQuestions = 0
//    nextRound()
//}
//
//
//
//// MARK: Helper Methods
//
//func loadNextRoundWithDelay(seconds seconds: Int) {
//    // Converts a delay in seconds to nanoseconds as signed 64 bit integer
//    let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
//    // Calculates a time value to execute the method given current time and delay
//    let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, delay)
//
//    // Executes the nextRound method at the dispatch time on the main queue
//    dispatch_after(dispatchTime, dispatch_get_main_queue()) {
//        self.nextRound()
//    }
//}
//
//func loadGameStartSound() {
//    let pathToSoundFile = NSBundle.mainBundle().pathForResource("GameSound", ofType: "wav")
//    let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
//    AudioServicesCreateSystemSoundID(soundURL, &gameSound)
//}
//
//func playGameStartSound() {
//    AudioServicesPlaySystemSound(gameSound)
//}
//}
//
//

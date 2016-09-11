//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Alexander Nelson on 9/6/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {

    var trivia = QuestionModel()

    @IBOutlet weak var questionFieldLabel: UILabel!

    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
    
    }
    
//Working on material
//    func displayQuestion() {
//        let indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(trivia.triviaQuestions.count)
//        let questionDictionary = trivia.triviaQuestions.removeAtIndex(indexOfSelectedQuestion)
//        let questionFie
//    }
    

}


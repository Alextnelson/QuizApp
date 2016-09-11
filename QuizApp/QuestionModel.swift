//
//  QuestionModel.swift
//  QuizApp
//
//  Created by Alexander Nelson on 9/8/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//


struct Question {
    var question : String
    var answers: [String]
    var correctAnswer: String
}

let question1 = Question(question: "This was the only US President to serve more than two consecutive terms.", answers: ["George Washington", "Franklin D. Roosevelt", "Woodrow Wilson", "Andrew Jackson"], correctAnswer: "Franklin D. Roosevelt")
let question2 = Question(question: "Which of the following countries has the most residents?", answers: ["Nigeria", "Russia", "Iran", "Vietnam"], correctAnswer: "Nigeria")
let question3 = Question(question: "In what year was the United Nations founded?", answers: ["1918", "1919", "1945", "1954"], correctAnswer: "1945")
let question4 = Question(question: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", answers: ["Paris", "Washington, D.C.", "New York City", "Boston"], correctAnswer: "New York City")
let question5 = Question(question: "Which nation produces the most oil?", answers: ["Iran", "Iraq", "Brazil", "Canada"], correctAnswer: "Canada")
let question6 = Question(question: "Which country has most recently won consecutive World Cups in soccer?", answers: ["Italy", "Brazil", "Argentina", "Spain"], correctAnswer: "Brazil")
let question7 = Question(question: "Which of the following rivers is longest?", answers: ["Yangtze", "Mississippi", "Congo", "Mekong"], correctAnswer: "Mississippi")
let question8 = Question(question: "Which city is the oldest?", answers: ["Mexico City", "Cape Town", "San Juan", "Sydney"], correctAnswer: "Mexico City")
let question9 = Question(question: "Which country was the first to allow women to vote in national elections?", answers: ["New Zealand", "United States", "Sweden", "Senegal"], correctAnswer: "New Zealand")
let question10 = Question(question: "Which of these countries won the most medals in the 2012 Summer Games?", answers: ["France", "Germany", "Japan", "Great Britain"], correctAnswer: "Great Britain")

let questions = [
    question1,
    question2,
    question3,
    question4,
    question5,
    question6,
    question7,
    question8,
    question9,
    question10
]
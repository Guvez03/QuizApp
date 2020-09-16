//
//  QuizBrain.swift
//  Quizz
//
//  Created by ahmet on 16.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation


struct QuizBrain {
    
    
    var questionList = [
        QuestionModel(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuestionModel(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuestionModel(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuestionModel(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuestionModel(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuestionModel(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuestionModel(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuestionModel(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuestionModel(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuestionModel(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    
    var questionNumber = 0
    var score = 0
    var button1Title : String = ""
    var button2Title : String = ""
    var button3Title : String = ""
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        
        if userAnswer == questionList[questionNumber].correctAnswer {
            score += 1
            return true
        }
        else{
            return false
        }
    }
    
    func getQuestionText() -> String {
        
        return questionList[questionNumber].q!
    }
    
    func getProgress() -> Float{
        
        let progressResult = Float(questionNumber) / Float(questionList.count)
        return progressResult
    }
    
    mutating func nextQuestion(){
        if questionNumber+1 < questionList.count {
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
            
        }
    }
    
    func getScore() -> Int{
        
        return score
        
    }
    
    mutating func buttonSetTitle() {
        
        button1Title = questionList[questionNumber].a![0]
        button2Title = questionList[questionNumber].a![1]
        button3Title = questionList[questionNumber].a![2]
        
    }
    
    
}

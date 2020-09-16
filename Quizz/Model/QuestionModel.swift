//
//  QuestionModel.swift
//  Quizz
//
//  Created by ahmet on 16.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import Foundation

struct QuestionModel {
    
    let q : String?
    let a : [String]?
    let correctAnswer : String?
    
    init(q :String,a:[String],correctAnswer:String) {
        self.q = q
        self.a = a
        self.correctAnswer = correctAnswer
    }
}

//
//  ViewController.swift
//  Quizz
//
//  Created by ahmet on 15.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1Outlet: UIButton!
    @IBOutlet weak var button2Outlet: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var button3Outlet: UIButton!
    
    var userAnswer : String?
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.progress = 0.0
        quizBrain.buttonSetTitle()
        update()
    }
    
    @IBAction func button1Touched(_ sender: UIButton) {
        userAnswer = sender.currentTitle!
        let arrayAnswer = quizBrain.checkAnswer(userAnswer!)
        
        if arrayAnswer {
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(update), userInfo: nil, repeats: false)
    }
    
    @objc func update () {
        
        questionLabel.text = quizBrain.getQuestionText()
        button1Outlet.backgroundColor = UIColor.clear
        button2Outlet.backgroundColor = UIColor.clear
        button3Outlet.backgroundColor = UIColor.clear
        quizBrain.buttonSetTitle()
        button1Outlet.setTitle(quizBrain.button1Title, for: .normal)
        button2Outlet.setTitle(quizBrain.button2Title, for: .normal)
        button3Outlet.setTitle(quizBrain.button3Title, for: .normal)
        scoreLabel.text = "Puan = \(quizBrain.getScore())"
        progressBar.progress = quizBrain.getProgress()
        // Progress barın ilerlemisini mevcut soru sayısı / listedeki soru sayısına bölümüyle elde ettik.
    }
    
}


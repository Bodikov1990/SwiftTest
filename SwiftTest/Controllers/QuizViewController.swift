//
//  QuizViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    var question: Question!
    var selectedAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        sender.tag = selectedAnswer
        updateQuestion()
    }
    
    private func updateQuestion() {
        questionLabel.text = question.question
        buttonA.setTitle(question.buttonA, for: .normal)
        buttonB.setTitle(question.buttonB, for: .normal)
        buttonC.setTitle(question.buttonC, for: .normal)
        buttonD.setTitle(question.buttonD, for: .normal)
        selectedAnswer = question.correctAnswer
    }

}

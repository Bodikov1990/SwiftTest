//
//  QuizViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    var rows: Rows!
    var questions: [Questions] = []
    
    //MARK: - Old methods
    private var questionNumber: Int = 0
    private var score: Int = 0
    private var selectedAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            score += 1
        }
        questionNumber += 1
        updateQuestion()
    }
    
    private func updateQuestion(){
        getQuiestionsInRows()
        
        if questionNumber <= questions.count - 1{
            
            questionLabel.text = questions[questionNumber].question
            buttonA.setTitle(questions[questionNumber].optionA, for: .normal)
            buttonB.setTitle(questions[questionNumber].optionB, for: .normal)
            buttonC.setTitle(questions[questionNumber].optionC, for: .normal)
            buttonD.setTitle(questions[questionNumber].optionD, for: .normal)
            selectedAnswer = questions[questionNumber].correctAnswer
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Круто", message: "Хотите повторить?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Рестарт", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    private func updateUI(){
        title = "Вопрос № \(questionNumber + 1) из \(questions.count)"
        let tottalProgress = Float(questionNumber) / Float(questions.count)
        progressBar.setProgress(tottalProgress, animated: true)
    }
    
    private func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
    private func getQuiestionsInRows() {
        for question in rows.questions {
            questions.append(question)
        }
    }
}

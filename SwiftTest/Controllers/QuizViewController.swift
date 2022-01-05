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
    
    var allQuestions = DataManager()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
//            ProgressHUD.showSuccess("Correct")
            score += 1
            
        }else{
//            ProgressHUD.showError("Incorrect")
            
            
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    private func updateQuestion() {
        if questionNumber <= allQuestions.list.count - 1{
//            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            buttonA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            buttonB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            buttonC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            buttonD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func updateUI(){
        
        title = "Вопрос№ \(questionNumber + 1) из \(allQuestions.list.count)"
 
    }
    
    func restartQuiz(){
        questionNumber = 0
        updateQuestion()
        
    }

}

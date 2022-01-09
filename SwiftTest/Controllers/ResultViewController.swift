//
//  ResultViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 09.01.2022.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var quiz: String!
    var score: Int!
    var questionNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizLabel.text = "Тест по теме \(quiz ?? "")"
        resultLabel.text = "\(score ?? 0) правильных ответов из \(questionNumber ?? 0)"
        
    }

    @IBAction func restartAction() {
        
    }
    
    @IBAction func backActiona() {
        dismiss(animated: true) {}
    }
    
}

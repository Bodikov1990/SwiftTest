//
//  QuizTableViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class QuizTableViewController: UITableViewController {

    var quizes: [Question] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        quizes.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(quizes[section].nameOfBlock)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        quizes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quizVC", for: indexPath)
        let quiz = quizes[indexPath.row]

        
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
        case 0: content.text = quiz.nameOfQuiz
        default: content.text = quiz.nameOfBlock
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let quizVC = segue.destination as? QuizViewController else { return }
            quizVC.question = quizes[indexPath.row]
        }
    }

}

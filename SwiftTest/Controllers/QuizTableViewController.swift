//
//  QuizTableViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class QuizTableViewController: UITableViewController {

    var quizes = DataManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        quizes.list.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(quizes.list[section].nameOfSection)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        quizes.list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quizVC", for: indexPath)
        let quiz = quizes.list[indexPath.row]


        var content = cell.defaultContentConfiguration()

//        switch indexPath.row {
//        case 0: content.text = quiz
//        default: content.text = quiz
//        }

        content.text = quiz.question

        cell.contentConfiguration = content

        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tableView.indexPathForSelectedRow {
//            guard let quizVC = segue.destination as? QuizViewController else { return }
//            quizVC.question = quizes[indexPath.row]
//        }
//    }

}

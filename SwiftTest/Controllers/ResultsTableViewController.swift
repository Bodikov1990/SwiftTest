//
//  ResultsTableViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    var allQuestions: Quizes!
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        allQuestions.sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        allQuestions.sections[section].sections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allQuestions.sections[section].rows.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultVC", for: indexPath)
        
        let section = allQuestions.sections[indexPath.section]
        let rows = section.rows[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = rows.rows
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let quizVC = segue.destination as? QuizViewController else { return }
            
            let section = allQuestions.sections[indexPath.section]
            quizVC.rows = section.rows[indexPath.row]
        }
    }
    
}

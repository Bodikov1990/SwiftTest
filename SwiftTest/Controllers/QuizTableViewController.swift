//
//  QuizTableViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class QuizTableViewController: UITableViewController {
    
    var allQuestions = Quizes.getQuestions()
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        var sectionCounts: Int!
        
        for nameOfSections in allQuestions {
            sectionCounts = nameOfSections.sections.count
            
        }
        
        return sectionCounts
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionName: String!
        
        for quizes in allQuestions {
            sectionName = quizes.sections[section].sections
        }
        
        return sectionName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCounts: Int!
        
        for sections in allQuestions {
            for rows in sections.sections {
                rowCounts = rows.rows.count
            }
        }
        
        return rowCounts
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quizVC", for: indexPath)
        
        var quiz: Rows!
        
        for quizes in allQuestions {
            for sections in quizes.sections {
                quiz = sections.rows[indexPath.row]
                
            }
        }
        
        var content = cell.defaultContentConfiguration()
        
        content.text = quiz.rows
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let quizVC = segue.destination as? QuizViewController else { return }
            
            for quizes in allQuestions {
                
                for sectionName in quizes.sections {
                    quizVC.rows = sectionName.rows[indexPath.row]
                }
            }
            
        }
    }
    
}

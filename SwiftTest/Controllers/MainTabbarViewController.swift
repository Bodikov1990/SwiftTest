//
//  MainTabbarViewController.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    var allQuestions = Quizes.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {

                guard let viewControllers = self.viewControllers else { return }
                for controller in viewControllers {
                    if let quizesNavigationVC = controller as? UINavigationController {
                        if let quizTBVC = quizesNavigationVC.topViewController as? QuizTableViewController {
                            quizTBVC.allQuestions = allQuestions
                        } else if let resultsTBVC = quizesNavigationVC.topViewController as? ResultsTableViewController {
                            resultsTBVC.allQuestions = allQuestions
                        }
                    }
                }
            }
    
}


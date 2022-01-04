//
//  Question.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import Foundation

struct Question {
    let nameOfBlock: String
    let nameOfQuiz: String
    let question: String
    let buttonA: String
    let buttonB: String
    let buttonC: String
    let buttonD: String
    let correctAnswer: Int
    
}

extension Question {
    static func getQuiz() ->[Question] {
        var quizes: [Question] = []
        
        let nameOfBlocks = DataManager.shared.nameOfSections
        let nameOfQuizes = DataManager.shared.nameOfQuizes
        let quetions = DataManager.shared.questions
        let buttonsA = DataManager.shared.buttonsA
        let buttonsB = DataManager.shared.buttonsB
        let buttonsC = DataManager.shared.buttonsC
        let buttonsD = DataManager.shared.buttonsD
        let correctAnswers = DataManager.shared.correctAnswers
        
        let iterationCount = min(
            nameOfBlocks.count,
            nameOfQuizes.count,
            quetions.count,
            buttonsA.count,
            buttonsB.count,
            buttonsC.count,
            buttonsD.count,
            correctAnswers.count
        )
        
        for index in 0..<iterationCount {
            let quiz = Question(nameOfBlock: nameOfBlocks[index],
                                nameOfQuiz: nameOfQuizes[index],
                                question: quetions[index],
                                buttonA: buttonsA[index],
                                buttonB: buttonsB[index],
                                buttonC: buttonsC[index],
                                buttonD: buttonsD[index],
                                correctAnswer: correctAnswers[index]
            )
            quizes.append(quiz)
        }
        
        return quizes
    }
    
    
}

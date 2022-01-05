//
//  Question.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import Foundation

class Question {
    let nameOfSection: String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(section: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        nameOfSection = section
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}

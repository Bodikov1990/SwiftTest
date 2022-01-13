//
//  Question.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import Foundation

struct Quizes {
    var sections: [Sections]
}

struct Sections {
    let sections: String
    let rows: [Rows]
}

struct Rows {
    let rows: String
    let questions: [Questions]
}

struct Questions {
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
}

extension Quizes {
    static func getQuestions() -> Quizes {
        let quizes: Quizes = DataManager.shared.quizes
        return quizes
     }
}

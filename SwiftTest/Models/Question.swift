//
//  Question.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 04.01.2022.
//

import Foundation

struct Quizes {
    let sections: [Sections]
    
    static func getQuestions() -> [Quizes] {
        [Quizes(
            sections: [Sections(
                sections: "Основы Swift",
                rows: [Rows(
                    rows: "Синтаксис Swift",
                    questions: [Questions(
                        question: "Можем ли мы менять значение переменных?",
                        optionA: "A. Ну да, но вообще-то нет",
                        optionB: "B. Нет",
                        optionC: "С. Да",
                        optionD: "D. Зависит от обстоятельств",
                        correctAnswer: 3),
                                Questions(
                                    question: "Если мы уверены, что значение свойства меняться не будет, что нужно использовать?",
                                    optionA: "A. Константу",
                                    optionB: "B. Литерал",
                                    optionC: "C. Переменную",
                                    optionD: "D. Свойство",
                                    correctAnswer: 1),
                                Questions(
                                    question: "Какая из перечисленных ниже строк создаст новую переменную?",
                                    optionA: "A. var name = «Tim Cook»",
                                    optionB: "B. fruit = «Apple»",
                                    optionC: "C. pet = «Rex»",
                                    optionD: "D. let city = «Moscow»",
                                    correctAnswer: 1),
                                Questions(
                                    question: "С какой буквы надо писать все типы в Swift?",
                                    optionA: "A. Со строчной буквы" ,
                                    optionB: "B. С заглавной буквы" ,
                                    optionC: "C. На свое усмотрение" ,
                                    optionD: "D. Это числовые значения, обмануть меня решили?",
                                    correctAnswer: 1),
                                Questions(
                                    question: "Можно ли присвоить значению свойство по умолчанию?",
                                    optionA: "A. Да" ,
                                    optionB: "B. Нет" ,
                                    optionC: "C. ???????" ,
                                    optionD: "D. Не знаю",
                                    correctAnswer: 1),
                                Questions(
                                    question: "С какой буквы должны именоваться свойства в Swift?",
                                    optionA: "По желанию" ,
                                    optionB: "B. Со второй буквы, первая не нужна" ,
                                    optionC: "C. С заглавной" ,
                                    optionD: "D. Со строчной",
                                    correctAnswer: 4)]),
                       Rows(rows: "Базовые операторы",
                            questions: [
                                Questions(
                                    question: "Как называется оператор в этом выражении: a += 2?",
                                    optionA: "A. Присваивания",
                                    optionB: "B. Составного сложения",
                                    optionC: "С. Сложения",
                                    optionD: "D. Присваивания со сложением",
                                    correctAnswer: 3),
                                Questions(
                                    question: "Если при использовании логического И (&&) первый операнд = false,будет ли проверяться второе выражение?",
                                    optionA: "A. Да",
                                    optionB: "B. Нет",
                                    optionC: "C. Переменную",
                                    optionD: "D. Свойство",
                                    correctAnswer: 2),
                                Questions(
                                    question: "Какой будет результат выражения 9 % 5 ?",
                                    optionA: "A. 1",
                                    optionB: "B. 3",
                                    optionC: "C. 6",
                                    optionD: "D. 4",
                                    correctAnswer: 4),
                                Questions(
                                    question: "Левая часть выражения с логическим оператором || равна true, будем ли мы проверять вторую часть?",
                                    optionA: "A. Зависит от операндов" ,
                                    optionB: "B. Нет" ,
                                    optionC: "C. Да, только если она true" ,
                                    optionD: "D. а, только если она false",
                                    correctAnswer: 2),
                                Questions(
                                    question: "Операторы, которые применяются к двум величинам",
                                    optionA: "A. Бинарные" ,
                                    optionB: "B. Тернарные" ,
                                    optionC: "C. Унарные" ,
                                    optionD: "D. Двоичные",
                                    correctAnswer: 1)])])])]
        
    }
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
    var question: String
    var optionA: String
    var optionB: String
    var optionC: String
    var optionD: String
    var correctAnswer: Int
}

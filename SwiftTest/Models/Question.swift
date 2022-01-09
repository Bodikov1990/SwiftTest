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
                    questions: [Questions(question: "Можем ли мы менять значение переменных?",
                                          optionA: "A. Ну да, но вообще-то нет",
                                          optionB: "B. Нет",
                                          optionC: "С. Да",
                                          optionD: "D. Зависит от обстоятельств",
                                          correctAnswer: 3),
                                Questions(question: "Если мы уверены, что значение свойства меняться не будет, что нужно использовать?",
                                          optionA: "A. Константу",
                                          optionB: "B. Литерал",
                                          optionC: "C. Переменную",
                                          optionD: "D. Свойство",
                                          correctAnswer: 1),
                                Questions(question: "Какая из перечисленных ниже строк создаст новую переменную?",
                                          optionA: "A. var name = «Tim Cook»",
                                          optionB: "B. fruit = «Apple»",
                                          optionC: "C. pet = «Rex»",
                                          optionD: "D. let city = «Moscow»",
                                          correctAnswer: 1),
                                Questions(question: "С какой буквы надо писать все типы в Swift?",
                                          optionA: "A. Со строчной буквы" ,
                                          optionB: "B. С заглавной буквы" ,
                                          optionC: "C. На свое усмотрение" ,
                                          optionD: "D. Это числовые значения, обмануть меня решили?",
                                          correctAnswer: 1),
                                Questions(
                                        question: "Можно ли присвоить значению свойство по умолчанию?",
                                        optionA: "A. Да" ,
                                        optionB: "B. Нет" ,
                                        optionC: "" ,
                                        optionD: "",
                                        correctAnswer: 1),
                                Questions(question: "С какой буквы должны именоваться свойства в Swift?",
                                          optionA: "По желанию" ,
                                          optionB: "B. Со второй буквы, первая не нужна" ,
                                          optionC: "C. С заглавной" ,
                                          optionD: "D. Со строчной",
                                          correctAnswer: 4),
                                Questions(question: "Любые целые числа без дробной части хранятся в типе:",
                                          optionA: "A. Float",
                                          optionB: "B. Int",
                                          optionC: "C. Trouble",
                                          optionD: "D. Double",
                                          correctAnswer: 2),
                                Questions(question: "Тип данных, отвечающий за хранение произвольной текстовой информации:",
                                          optionA: "A. Bool",
                                          optionB: "B. Int",
                                          optionC: "C. Character",
                                          optionD: "D. String",
                                          correctAnswer: 4),
                                Questions(question: "Каким ключевым словом можно определить константу?",
                                          optionA: "A. cat",
                                          optionB: "B. let",
                                          optionC: "C. set",
                                          optionD: "D. var",
                                          correctAnswer: 2),
                                Questions(question: "Какая из перечисленных ниже строк создаст целочисленное значение?",
                                          optionA: "A. var age = 40",
                                          optionB: "B. let power = «1000»",
                                          optionC: "C. var size = «12»",
                                          optionD: "D. var voltage = 220.0",
                                          correctAnswer: 1)
                               ]),
                       Rows(rows: "Базовые операторы",
                            questions: [
                                Questions(question: "Как называется оператор в этом выражении: a += 2?",
                                          optionA: "A. Присваивания",
                                          optionB: "B. Составного сложения",
                                          optionC: "С. Сложения",
                                          optionD: "D. Присваивания со сложением",
                                          correctAnswer: 3),
                                Questions(question: "Если при использовании логического И (&&) первый операнд = false,будет ли проверяться второе       выражение?",
                                          optionA: "A. Да",
                                          optionB: "B. Нет",
                                          optionC: "C. Переменную",
                                          optionD: "D. Свойство",
                                          correctAnswer: 2),
                                Questions(question: "Какой будет результат выражения 9 % 5 ?",
                                          optionA: "A. 1",
                                          optionB: "B. 3",
                                          optionC: "C. 6",
                                          optionD: "D. 4",
                                          correctAnswer: 4),
                                Questions(question: "Левая часть выражения с логическим оператором || равна true, будем ли мы проверять вторую часть?",
                                          optionA: "A. Зависит от операндов" ,
                                          optionB: "B. Нет" ,
                                          optionC: "C. Да, только если она true" ,
                                          optionD: "D. а, только если она false",
                                          correctAnswer: 2),
                                Questions(question: "Операторы, которые применяются к двум величинам",
                                          optionA: "A. Бинарные" ,
                                          optionB: "B. Тернарные" ,
                                          optionC: "C. Унарные" ,
                                          optionD: "D. Двоичные",
                                          correctAnswer: 1),
                                Questions(question: "Этот логический оператор будет давать true, когда хотя бы один операнд = true",
                                          optionA: "A. Логическое ИЛИ ||",
                                          optionB: "B. Логическое НЕ !",
                                          optionC: "C. Логическое И &&",
                                          optionD: "",
                                          correctAnswer: 1),
                                Questions(question: "Присваивание объявленному объекту начального значения это:",
                                          optionA: "A. Объявление",
                                          optionB: "B. Инициализация",
                                          optionC: "C. Обновление",
                                          optionD: "D. Возведение",
    //                                      optionE: "E. Присвоение",
                                          correctAnswer: 2),
                                Questions(question: "ТОЛЬКО когда оба операнда равны true, этот логический оператор дает true",
                                          optionA: "A. !",
                                          optionB: "B. ||",
                                          optionC: "C. &&",
                                          optionD: "D. ??",
    //                                      optionE: "E. < >",
                                          correctAnswer: 3),
                                Questions(question: "Задайте диапазон от a до b, исключая b",
                                          optionA: "A. a..< b",
                                          optionB: "B. a..<",
                                          optionC: "C. …a",
                                          optionD: "D. a...< b",
    //                                      optionE: "E. a...b",
    //                                      optionE: "F. a...",
                                          correctAnswer: 1),
                                Questions(question: "Унарные операторы, которые ставятся перед величиной",
                                          optionA: "A. Постфиксные",
                                          optionB: "B. Суффиксные",
                                          optionC: "C. Префиксные",
                                          optionD: "",
    //                                      optionE: "E. a...b",
    //                                      optionE: "F. a...",
                                          correctAnswer: 3)
                            ]),
                       Rows(rows: "Условные инструкции",
                            questions:[
                                Questions(question: "Можно ли объявить опциональную константу без указания типа, например: let bikeVelocity = nil",
                                          optionA: "A. Нет",
                                          optionB: "B. Нет, объявлять таким образом можно только переменные",
                                          optionC: "C. Да",
                                          optionD: "",
                                          correctAnswer: 1),
                                Questions(question: "Если оператор управления break выполняется внутри switch, что произойдет дальше?",
                                          optionA: "A. Завершается работа switch",
                                          optionB: "B. Начать сравнение сначала",
                                          optionC: "C. Переход к следующему кейсу",
                                          optionD: "",
                                          correctAnswer: 1),
                                Questions(question: "Внутри инструкции switch можно использовать составные кейсы. Чем разделять их значения?",
                                          optionA: "A. Тире",
                                          optionB: "B. Логический оператор И &&",
                                          optionC: "C. Логический оператор ИЛИ ||",
                                          optionD: "D. Запятая",
                                          correctAnswer: 4),
                                Questions(question: "Внутри каждого случая switch - case обязательно должно содержаться это:",
                                          optionA: "A. Условие",
                                          optionB: "B. Сравнение",
                                          optionC: "C. Исполняемое выражение",
                                          optionD: "D. break",
                                          correctAnswer: 3),
                                Questions(question: "Будут ли проверяться все оставшиеся кейсы внутри инструкции switch, если уже было найдено совпадение?",
                                          optionA: "A. Да",
                                          optionB: "B. Нет",
                                          optionC: "C. Будет проверяться default",
                                          optionD: "",
                                          correctAnswer: 3)
                            ])
                       ])])]
         
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

//
//  DataManager.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 03.01.2022.
//

import Foundation

class DataManager{

        var list = [Question]()
        
        init() {
            list.append(Question(
                section: "Основы Swift",
                questionText: "Можем ли мы менять значение переменных?",
                choiceA: "A. Ну да, но вообще-то нет",
                choiceB: "B. Нет",
                choiceC: "С. Да",
                choiceD: "D. Зависит от обстоятельств",
                answer: 3))
            
            list.append(Question(
                section: "Мое первое приложение",
                questionText: "Если мы уверены, что значение свойства меняться не будет, что нужно использовать?",
                choiceA: "A. Константу",
                choiceB: "B. Литерал",
                choiceC: "C. Переменную",
                choiceD: "D. Свойство",
                answer: 1))
            
            list.append(Question(
                section: "Основы Swift",
                questionText: "Какая из перечисленных ниже строк создаст новую переменную?",
                choiceA: "A. var name = «Tim Cook»",
                choiceB: "B. fruit = «Apple»",
                choiceC: "C. pet = «Rex»",
                choiceD: "D. let city = «Moscow»",
                answer: 1))
            
            
            list.append(Question(
                section: "Основы Swift" ,
                questionText: "С какой буквы надо писать все типы в Swift?",
                choiceA: "A. Со строчной буквы" ,
                choiceB: "B. С заглавной буквы" ,
                choiceC: "C. На свое усмотрение" ,
                choiceD: "D. Это числовые значения, обмануть меня решили?",
                answer: 1))
            
            list.append(Question(
                section: "Основы Swift" ,
                questionText: "Можно ли присвоить значению свойство по умолчанию?",
                choiceA: "A. Да" ,
                choiceB: "B. Нет" ,
                choiceC: "C. ???????" ,
                choiceD: "D. Не знаю",
                answer: 1))
        }
    }

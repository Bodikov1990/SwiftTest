//
//  DataManager.swift
//  SwiftTest
//
//  Created by Kuat Bodikov on 03.01.2022.
//

import Foundation

class DataManager{

    static let shared = DataManager()
    
    var nameOfSections = ["Основа Swift", "Мое первое приложение"]
    
    var nameOfQuizes = ["Синтаксис Swift", "Базовые операторы"]
    
    var questions = ["dfdfs", "qweqwrq"]
    
    var buttonsA = ["A. ответ1", "A. ответ2"]
    
    var buttonsB = ["B. ответ3", "B. ответ4"]

    var buttonsC = ["C. ответ5", "C. ответ6"]

    var buttonsD = ["D. ответ7", "D. ответ8"]

    var correctAnswers = [1, 3]
    
    private init() {}

}

//
//  Question.swift
//  05 - QuizApp
//
//  Created by Eduardo Carrillo on 3/27/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import Foundation

class Question{
    let questionText: String
    let answer: Bool
    
    init(texto: String, correctAnswer:Bool) {
        self.questionText = texto
        self.answer = correctAnswer
    }
}



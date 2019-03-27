//
//  QuestionsFactory.swift
//  05 - QuizApp
//
//  Created by Eduardo Carrillo on 3/27/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import Foundation

class QuestionsFactory {
    var questions = [Question]()
    
    func getQuestionAt(index: Int) -> Question? {
        if index<0 || index>self.questions.count{
            return nil
        }else{
            return self.questions[index]
        }
    }
    
    init() {
        self.questions.append(Question(texto: "El Vaticano tiene la cantidad de dinero suficiente para acabar con la pobreza mundial dos veces", correctAnswer: true))
        self.questions.append(Question(texto: "El caballito de mar es tan fiel a su pareja, que cuando uno muere, el otro también lo hace al poco tiempo", correctAnswer: true))
        self.questions.append(Question(texto: "Los humanos son los únicos que practican el sexo por placer", correctAnswer: false))
        self.questions.append(Question(texto: "La semilla de la manzana contine cianuro y es tóxica", correctAnswer: true))
        self.questions.append(Question(texto: "Se puede afeitar el bigote a un gato sin ningun problema", correctAnswer: false))
        self.questions.append(Question(texto: "Un Koala nece beber al menos una vez al día", correctAnswer: false))
        self.questions.append(Question(texto: "Eddison, el inventor de la bombilla, temía a la oscuridad", correctAnswer: true))
        self.questions.append(Question(texto: "Los escorpiones son los unicos animales que se suicidan cuando no pueden escapar de una situacion de peligro", correctAnswer: true))
        self.questions.append(Question(texto: "Los ojos de un hamster se pueden caer si se le cuelga cabeza abajo", correctAnswer: true))
        self.questions.append(Question(texto: "Si divides el numero de abejas hembra entre el de abejas macho en un panal, se obtiene el número de oro", correctAnswer: false))
        self.questions.append(Question(texto: "Las palmeras nacieron por primera vez en el polo norte", correctAnswer: true))
        self.questions.append(Question(texto: "Cervantes y Shakespeare murieron el mismo día", correctAnswer: true))
    }
    
}

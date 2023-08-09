//
//  QuestionModel.swift
//  Crazy_Quizy
//
//  Created by JimmyChao on 2023/8/8.
//

import Foundation
import UIKit

//QuizInfo struct
struct QuizInfo {
    let question: String
    let options: [String]
    let correctAnswer: Int
    let picture: UIImage
    let answerDescription: String
}

struct CatBreedsQuizData {
    let quizzes: [QuizInfo] = [
        QuizInfo(question: "Which country does the Abyssinian cat likely originate from?",
                 options: ["Ethiopia", "Egypt", "Greece", "United States"],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.Abyssinian.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Abyssinian cat likely originates from Ethiopia."),
        
        QuizInfo(question: "The Aegean cat comes from which country?",
                 options: ["Egypt", "Greece", "United States", "China"],
                 correctAnswer: 1,
                 picture: UIImage(named: CatBreedPicture.Aegean.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Aegean cat originates from Greece."),
        
        QuizInfo(question: "What's distinctive about the American Bobtail?",
                 options: ["It has a long tail.", "It originates from Greece.", "It has a shortened tail.", "It has a very long coat."],
                 correctAnswer: 2,
                 picture: UIImage(named: CatBreedPicture.AmericanBobtail.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The American Bobtail is known for its shortened tail."),
        
        QuizInfo(question: "The American Curl is known for?",
                 options: ["Curled ears", "Short tail", "Wavy coat", "Size"],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.AmericanCurl.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The American Curl is recognized by its unique curled ears."),
        
        QuizInfo(question: "Which country does the American Ringtail originate from?",
                 options: ["China", "Egypt", "Greece", "United States"],
                 correctAnswer: 3,
                 picture: UIImage(named: CatBreedPicture.AmericanRingtail.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The American Ringtail cat originates from the United States."),
        
        QuizInfo(question: "What type is the American Shorthair?",
                 options: ["Natural", "Mutation", "Hybrid", "Crossbreed"],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.AmericanShorthair.rawValue) ?? UIImage(systemName: "photo") ?? UIImage(systemName: "photo")!,
                 answerDescription: "The American Shorthair is of the Natural type."),
        
        QuizInfo(question: "What's unique about the American Wirehair's coat?",
                 options: ["It's very long.", "It's wavy or 'rexed'.", "It's double-layered.", "It's hypoallergenic."],
                 correctAnswer: 1,
                 picture: UIImage(named: CatBreedPicture.AmericanWirehair.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The American Wirehair has a distinct wavy or 'rexed' coat."),
        
        QuizInfo(question: "Where does the Aphrodite Giant cat come from?",
                 options: ["United States", "China", "Cyprus", "Australia"],
                 correctAnswer: 2,
                 picture: UIImage(named: CatBreedPicture.AphroditeGiant.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Aphrodite Giant originates from Cyprus."),
        
        QuizInfo(question: "The Arabian Mau is native to?",
                 options: ["Arabian Peninsula", "India", "Australia", "United States"],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.ArabianMau.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Arabian Mau is native to the Arabian Peninsula."),
        
        QuizInfo(question: "The Asian cat is a crossbreed between which two breeds?",
                 options: ["Burmese and Chinchilla Persians", "Abyssinian and Siamese", "Maine Coon and Persian", "Bengal and Siamese"],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.Asian.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Asian cat is a crossbreed between the Burmese and Chinchilla Persians."),
        
        QuizInfo(question: "What is the coat type of the Asian Semi-longhair?",
                 options: ["Short", "Semi-long", "Long", "Rexed"],
                 correctAnswer: 1,
                 picture: UIImage(named: CatBreedPicture.AsianSemiLonghair.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Asian Semi-longhair has a semi-long coat."),
        
        QuizInfo(question: "The Australian Mist is a crossbreed involving which cat?",
                 options: ["Siamese", "Abyssinian", "Bengal", "Persian"],
                 correctAnswer: 1,
                 picture: UIImage(named: CatBreedPicture.AustralianMist.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Australian Mist is a crossbreed involving the Abyssinian, among others."),
        
        QuizInfo(question: "The Balinese cat is a mutation of which breed?",
                 options: ["Siamese", "Persian", "Bengal", "Maine Coon"],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.Balinese.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Balinese cat is a mutation of the Siamese."),
        
        QuizInfo(question: "What's unique about the Bambino cat?",
                 options: ["It's hairless.", "It has curled ears.", "It's very large.", "It has a long tail."],
                 correctAnswer: 0,
                 picture: UIImage(named: CatBreedPicture.Bambino.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Bambino is unique for being a hairless breed."),
        
        QuizInfo(question: "The Bengal cat is a hybrid involving the leopard cat and which other breed?",
                 options: ["Siamese", "Abyssinian", "Egyptian Mau", "Persian"],
                 correctAnswer: 1,
                 picture: UIImage(named: CatBreedPicture.Bengal.rawValue) ?? UIImage(systemName: "photo")!,
                 answerDescription: "The Bengal cat is a hybrid involving the leopard cat and the Abyssinian.")
    ]
}


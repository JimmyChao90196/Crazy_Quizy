//
//  QuestionViewController.swift
//  Crazy_Quizy
//
//  Created by JimmyChao on 2023/8/8.
//

import UIKit
import Foundation
import OSLog

class QuestionViewController: UIViewController {

    
    let logger = Logger()
    
    //IBOutlet variables
    @IBOutlet var roundLabel: UILabel!
    @IBOutlet var bgImage: UIImageView!
    @IBOutlet var scoreLable: UILabel!
    @IBOutlet var question: UILabel!
    @IBOutlet var quizImage: UIImageView!
    @IBOutlet var optionCollection: [UIButton]!
    
    //Variables
    var quizzes = CatBreedsQuizData().quizzes
    var roundNum:Int = 0
    var answerDescribtion = ""
    var ansIndex = 0
    var quizIndex = 0
    var score:Int = 0{
        didSet{
            scoreLable.text = "Score: is now \(self.score)"
            roundNum += 1
            roundLabel.text = String(roundNum)
            //logger.info("\(self.roundNum)")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundNum = 0
        score = 0
        quizzes.shuffle()
        initializeQuiz()

        // Do any additional setup after loading the view.
    }
    
    
    //Initialize questions options and images
    func initializeQuiz(){
  
        //Initialize  question
        question.text = quizzes[quizIndex].question
        quizImage.image = quizzes[quizIndex].picture
        bgImage.image = quizImage.image
        ansIndex = quizzes[quizIndex].correctAnswer
        answerDescribtion = quizzes[quizIndex].answerDescription
        
        //Image appearance setting
        quizImage.contentMode = .scaleAspectFill
        bgImage.contentMode = .scaleAspectFill
        bgImage.layer.opacity = 0.5
        
        //Initialize options
        let quizOptions = quizzes[quizIndex].options
        for (index, optionButton) in optionCollection.enumerated(){
            
            optionButton.setTitle(quizOptions[index], for: .normal)
            
        }
        scoreLable.text = "Score is now \(score)"
    }
    
    
    

    //When option was pressed the following action will be triggered
    @IBAction func optionsPressed(_ sender: UIButton) {
        
        //Get selected option indext
        guard let selectedIndex = optionCollection.firstIndex(of: sender) else { return }
        //Determin if the player is correct or not
        let scoreOrNot = selectedIndex == ansIndex
        
        
        //Set alertController
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        if roundNum < 10{
            alertController.title = scoreOrNot ? "Correct":"Wrong"
            alertController.message = answerDescribtion
            
            //Add alert action
            alertController.addAction(.init(title: "Next", style: .default, handler: { _ in
                self.quizIndex = self.quizIndex%14 + 1
                
                //Update score
                self.score = scoreOrNot ? self.score + 10 : self.score - 5
                
                //update quiz after calculation
                self.initializeQuiz()
                
                self.logger.info("\(self.quizIndex)")
            }))
         
        }else{
            //New title
            alertController.title = "Game Over"
            alertController.message = answerDescribtion
            alertController.addAction(.init(title: "See result", style: .default, handler: { _ in
                self.performSegue(withIdentifier: "showResult", sender: nil)
                
                //Update score
                self.score = scoreOrNot ? self.score + 10 : self.score - 5
            }))
            
        }
        
        //Present alert when option pressed
        self.present(alertController, animated: true)

    }
    

    
    
    
    @IBSegueAction func segueTriggered(_ coder: NSCoder) -> ScoreViewController? {
        
        let controller = ScoreViewController(coder: coder)
        controller?.resultScore = score
        
        return controller
    }
    

    
    
}

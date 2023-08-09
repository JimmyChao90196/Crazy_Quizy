//
//  ScoreViewController.swift
//  Crazy_Quizy
//
//  Created by JimmyChao on 2023/8/8.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var scoreLable: UILabel!
    @IBOutlet var resultReview: UILabel!
    @IBOutlet var bgView: UIView!
    
    var resultScore:Int?

    
    
    func updateReview(){
            if resultScore ?? 0 < 30{
                resultReview.text = "Are you even trying?"
                resultImage.image = UIImage(named: "CryingCat")
            }else if resultScore ?? 0 > 30, resultScore ?? 0 < 60{
                resultReview.text = "Still have room to improve"
                resultImage.image = UIImage(named: "ThinkingCat")
            }else{
                resultReview.text = "That's incredible!"
                resultImage.image = UIImage(named: "WiningCat")
            }
    }
    
    
    
    func initializeAppearance(){
        bgView.layer.cornerRadius = 20
        bgView.layer.borderWidth = 1.8
        bgView.layer.borderColor = .init(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.9)
        
        scoreLable.layer.cornerRadius = 18
        scoreLable.layer.borderWidth = 1.8
        scoreLable.layer.borderColor = .init(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.9)
        
    }
    
    



    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeAppearance()
        showScore()
        updateReview()
        
    }
    
    
    
    func showScore(){
        scoreLable.text = "Your final score is \(resultScore ?? 0)"
    }
    
    @IBAction func replayButton(_ sender: Any) {
        performSegue(withIdentifier: "returnSegue", sender: nil)
    }
    


}

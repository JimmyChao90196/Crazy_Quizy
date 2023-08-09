//
//  IntroViewController.swift
//  Crazy_Quizy
//
//  Created by JimmyChao on 2023/8/8.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet var startButtonView: UIButton!
    
    func initialAppearance(){
        startButtonView.layer.borderColor = .init(red: 0.1, green: 0.1, blue: 0.3, alpha: 0.7)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialAppearance()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func startButton(_ sender: Any) {
    
        performSegue(withIdentifier: "startSegue", sender: nil)
        
    }
    

}

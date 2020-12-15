//
//  ViewController.swift
//  WarCardGame
//
//  Created by Harita Menon on 12/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    var leftScore = 0
    var rightScore = 0

    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image=UIImage(named: "card\(rightNumber)")
        if leftNumber>rightNumber{
            leftScore+=1
            leftScoreLabel.text=String(leftScore)
        }
        else if rightNumber>leftNumber{
            rightScore+=1
            rightScoreLabel.text=String(rightScore)
        }
        else{
            
        }
    }
    
}


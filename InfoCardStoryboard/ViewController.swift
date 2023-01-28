//
//  ViewController.swift
//  InfoCardStoryboard
//
//  Created by Monika Iliašová on 28/01/2023.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var positionLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
       
        
      makeCircle()
    
        nameLabel.text = "Mon Ili"
        positionLabel.text = "Junior iOS dev"
        
        
    }
  
        
    
  
    
    func makeCircle() {
        let circle = image
        
        circle?.layer.cornerRadius = view.layer.bounds.width / 4
        circle?.clipsToBounds = true
        circle?.layer.borderColor = UIColor.white.cgColor
        circle?.layer.borderWidth = 2.0
        
        
    }
    
    
    @IBAction func emailButton(_ sender: UIButton) {
        
        sender.setTitle("mon@ili.com", for: .normal)
    
    }
    
    @IBAction func phoneNumber(_ sender: UIButton) {
        
        sender.setTitle("+123 456 789", for: .normal)
    }
    
}


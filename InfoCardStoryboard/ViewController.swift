//
//  ViewController.swift
//  InfoCardStoryboard
//
//  Created by Monika Iliašová on 28/01/2023.
//

import UIKit
import Foundation
import MessageUI

class ViewController: UIViewController {


    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var positionLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UIButton!
    
    @IBOutlet weak var emailLabel: UIButton!
    
    @IBOutlet weak var emailImage: UIImageView!
    
    @IBOutlet weak var phoneImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
       
        
      makeCircle()
    
        nameLabel.text = "Mon Ili"
        positionLabel.text = "Junior iOS dev"
      
        phoneLabel.titleLabel?.text = "+123 456 789"
        phoneLabel.titleLabel?.textColor = .white
        emailLabel.titleLabel?.text = "mon@ili.com"
        emailLabel.titleLabel?.textColor = .white
    }
  
        
    
  
    
    func makeCircle() {
        let circle = image
        
        circle?.layer.cornerRadius = view.layer.bounds.width / 4
        circle?.clipsToBounds = true
        circle?.layer.borderColor = UIColor.white.cgColor
        circle?.layer.borderWidth = 2.0
        
        
    }
    
    
    
    @IBAction func emailButton(_ sender: UIButton) {
        
        let emailSend = "mon@ili.com"
        if let url = URL(string: "mailto:\(emailSend)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
        sender.setTitle("mon@ili.com", for: .normal)
        sender.setTitleColor(UIColor.white, for: .normal)
        
    }
    @IBAction func phoneNumber(_ sender: UIButton) {
        
        sender.setTitle("+123 456 789", for: .normal)
        sender.setTitleColor(UIColor.white, for: .normal)
    }
    
}


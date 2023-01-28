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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
       
        
      makeCircle()
    
        nameLabel.text = "Mon Ili"
        positionLabel.text = "Junior iOS dev"
        setUpPhone()
        setUpEmail()
        
    }
  
        
    
  
    
    func makeCircle() {
        let circle = image
        
        circle?.layer.cornerRadius = view.layer.bounds.width / 4
        circle?.clipsToBounds = true
        circle?.layer.borderColor = UIColor.white.cgColor
        circle?.layer.borderWidth = 2.0
        
        
    }
    
    func setUpPhone() {
        
        let phone = phoneLabel
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "phone.fill")

        // If you want to enable Color in the SF Symbols.
        imageAttachment.image = UIImage(systemName: "phone.fill")?.withTintColor(.white)

        let fullString = NSMutableAttributedString(string: "Phone ")
        fullString.append(NSAttributedString(attachment: imageAttachment))
        fullString.append(NSAttributedString(string: ": +123 456 789"))
        phone?.titleLabel?.attributedText = fullString
        phone?.titleLabel?.textColor = .white
        
        
    }
    
    func setUpEmail() {
       let email = emailLabel
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "envelope.fill")

        // If you want to enable Color in the SF Symbols.
        imageAttachment.image = UIImage(systemName: "envelope.fill")?.withTintColor(.white)

        let fullString = NSMutableAttributedString(string: "Email ")
        fullString.append(NSAttributedString(attachment: imageAttachment))
        fullString.append(NSAttributedString(string: ": mon@ili.com"))
        email?.titleLabel?.attributedText = fullString
        email?.titleLabel?.textColor = .white
        
    }
    
    
    @IBAction func emailButton(_ sender: UIButton) {
        
        let email = "mon@ili.com"
        if let url = URL(string: "mailto:\(email)") {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    
    }
    
    @IBAction func phoneNumber(_ sender: UIButton) {
        
        
    }
    
}


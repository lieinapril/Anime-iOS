//
//  LoginViewController.swift
//  Anime-iOS
//
//  Created by Weiran Xiong on 5/14/19.
//  Copyright © 2019 Takashi.Co. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var loginButtonBottomConstraint: NSLayoutConstraint?
    
    @IBOutlet weak var usernameLabel: PaddedTextField!
    @IBOutlet weak var passwordLabeel: PaddedTextField!
    @IBOutlet weak var loginButton: UIButton!
    
    private func setupViews() {
        usernameLabel.layer.borderColor = CustomColor.TEXT_FIELD_BORDER_COLOR
        usernameLabel.layer.borderWidth = 2.0
        usernameLabel.layer.cornerRadius = usernameLabel.frame.height / 10.0
        
        passwordLabeel.layer.borderColor = CustomColor.TEXT_FIELD_BORDER_COLOR
        passwordLabeel.layer.borderWidth = 2.0
        passwordLabeel.layer.cornerRadius = usernameLabel.frame.height / 10.0
        
        
        loginButton.layer.cornerRadius = loginButton.frame.height / 2.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loginButtonBottomConstraint = loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        loginButtonBottomConstraint?.isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        

        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardchange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keyboardchange(notification: Notification) {
        print("Keyboard changing")
        let info = notification.userInfo
        let keyboardFrame: CGRect = (info?[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        UIView.animate(withDuration: 0.1) {
            self.loginButtonBottomConstraint?.constant = -(keyboardFrame.size.height+20)
        }

    }

}


class PaddedTextField: UITextField {
    
    @IBInspectable var padding: CGFloat = 10
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    
}

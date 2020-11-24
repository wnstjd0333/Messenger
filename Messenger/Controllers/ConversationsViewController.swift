//
//  ViewController.swift
//  Messenger
//
//  Created by kimjunseong on 2020/11/24.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        if !isLoggedIn {
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            if let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginViewController {
                
                let nav = UINavigationController(rootViewController: vc)
                nav.modalPresentationStyle = .fullScreen
                present(nav, animated: false)
            }
        }
    }
}


//
//  SuccessViewController.swift
//  Miawouf
//
//  Created by Mélanie Obringer on 19/08/2019.
//  Copyright © 2019 Mélanie Obringer. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {
    
    var dog : Pet!
    @IBOutlet weak var labelSuccess: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextLabel()
    }
    private func setTextLabel() {
        if let name = dog.name {
            labelSuccess.text = """
            Wouf de bienvenue à \(name) !
            
            Vous avez bien été ajouté(e) à notre base de données ! Nous vous enverrons un SMS dès que nous avons une âme soeur à vous proposer !
            """
        }
    }
    @IBAction func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}

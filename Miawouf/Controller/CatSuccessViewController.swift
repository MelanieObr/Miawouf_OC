//
//  CatSuccessViewController.swift
//  Miawouf
//
//  Created by Mélanie Obringer on 19/08/2019.
//  Copyright © 2019 Mélanie Obringer. All rights reserved.
//

import UIKit

class CatSuccessViewController: UIViewController {
    var cat : Pet!
    
    @IBOutlet weak var labelCatSuccess: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextLabel()
    }
    private func setTextLabel() {
        if let name = cat.name {
            labelCatSuccess.text = """
            Miaou de bienvenue à \(name) !
            
            Vous avez bien été ajouté(e) à notre base de données ! Nous vous enverrons un SMS dès que nous avons une âme soeur à vous proposer !
            """
        }
    }
    @IBAction func dismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    
}

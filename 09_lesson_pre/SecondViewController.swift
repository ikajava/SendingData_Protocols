//
//  SecondViewController.swift
//  09_lesson_pre
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    var delegate: DataSendable?
   
    var data: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = data

    }

    @IBOutlet weak var textField: UITextField!
   
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBAction func sendButton(_ sender: Any) {
        guard let textFieldText = textField.text else {
            return
        }
        delegate?.update(data: textFieldText)
        self.navigationController?.popToRootViewController(animated: true)
 
    }

}

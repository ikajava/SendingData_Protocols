//
//  ViewController.swift
//  09_lesson_pre
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataSendable {
    
    func update(data: String) {
        labelOne.text = data
    }
    
    @IBOutlet weak var barButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
 
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "show", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            guard let text1 = textField1.text else {
                print("text field1 is Emtpy")
                return
            }

            guard let text2 = textFIeld2.text else {
                print("text field2 is Empty")
                return
            }
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = text1 + text2
            secondVC.delegate = self

        }
    }
    
    @IBOutlet weak var textField1: UITextField!
  
    @IBOutlet weak var textFIeld2: UITextField!
    @IBOutlet weak var labelOne: UILabel!
    
    

}


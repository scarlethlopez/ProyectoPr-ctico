//
//  NameViewController.swift
//  PracticalProject
//
//  Created by Aylwing Olivas on 10/26/21.
//

import UIKit

class NameViewController: UIViewController {
    
    
    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    @IBAction func add(_ sender: Any) {
      navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ViewController
        vc.account.append(TextField.text!)
    }
}

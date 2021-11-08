//
//  ViewControllerBalance.swift
//  PracticalProject
//
//  Created by Aylwing Olivas on 10/27/21.
//

import UIKit

class ViewControllerBalance: UIViewController {
 

    @IBOutlet weak var balanceTextField: UITextField!
    var controller: ViewController!
        override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func addBalance(_ sender: UIButton) {
     //  performSegue(withIdentifier: "balance", sender: self)
    }
/*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vcb = segue.destination as! ViewController
      //  vcb.balance.append(balanceTextField.text!)
    
    }*/
}




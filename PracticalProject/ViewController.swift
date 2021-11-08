//
//  ViewController.swift
//  PracticalProject
//
//  Created by Aylwing Olivas on 10/26/21.
//

import UIKit
class ViewController: UIViewController {
    

    @IBOutlet var TableView: UITableView!
   
    var account: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
    }
    
    @IBAction func add(_ sender: Any) {
      
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return account.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
       cell.textLabel?.text = account[indexPath.row]
     
     
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                tableView.beginUpdates()
                account.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }
        }
        
      func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return .delete
        }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        performSegue(withIdentifier: "showItemDetail", sender: self)
      }
    
}










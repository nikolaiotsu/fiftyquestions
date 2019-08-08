//
//  ViewController.swift
//  realmCRUD
//
//  Created by nikolai ostonal on 2019/08/08.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import UIKit
import RealmSwift

class MainViewController: UITableViewController {

    var realm: Realm!
    
    var toDoList: Results<ToDoListItem>{
        get {
            return realm.objects(ToDoListItem.self)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        realm = try! Realm()
       
        print(Realm.Configuration.defaultConfiguration.fileURL)
        // Do any additional setup after loading the view.
    }
    
    //MARK- add datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = toDoList[indexPath.row]
        cell.textLabel!.text = item.todoTitle
        
        
        //ternary for checkmark
        
//        cell.accessoryType = item.done == true ? .checkmark : .none
        
        
        return cell
        
    }
    
    //add delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//
        tableView.reloadRows(at: [indexPath], with: .automatic)

}
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            
            let item = toDoList[indexPath.row]

            try! self.realm.write({
                       item.deleteFlag = !item.deleteFlag
            })
            
            try! self.realm.write ({

                self.realm.delete(item)
            })
            
            
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        let alertVC = UIAlertController(title: "New to Do", message: "What do you want to do?", preferredStyle: .alert)
        alertVC.addTextField { (UITextField) in
        
    }
        
        let cancelAction = UIAlertAction.init(title: "Cancel", style: .destructive, handler: nil)
        alertVC.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default) { (UIAlertAction) -> Void in
          
            let todoItemTextField = (alertVC.textFields?.first)! as UITextField
            
            let newToDoListItem = ToDoListItem()
            newToDoListItem.todoTitle = todoItemTextField.text!
           
            try! self.realm.write ({
                self.realm.add(newToDoListItem)
        
              self.tableView.insertRows(at: [IndexPath.init(row: self.toDoList.count-1, section: 0)], with: .automatic)
            })
        }
        
        alertVC.addAction(addAction)
        present(alertVC, animated: true, completion: nil)
        
    }
    


}


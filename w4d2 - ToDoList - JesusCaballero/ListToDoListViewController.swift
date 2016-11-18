//
//  ListToDoListViewController.swift
//  w4d2 - ToDoList - JesusCaballero
//
//  Created by zeus on 11/15/16.
//  Copyright © 2016 appzeus. All rights reserved.
//

import UIKit

class ListToDoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var ListTableViewOutlet: UITableView!
    @IBOutlet weak var ListTextField: UITextField!
    @IBAction func ListButtonTapped(_ sender: Any) {
        let newList = ItemList(title:ListTextField.text!)
        ListTextField.text = nil
        toDoList.append(newList)
        ListTableViewOutlet.reloadData()
    }
    
    let cellID = "TableViewCell2"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.textLabel?.text = toDoList[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            toDoList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lists"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let toDoListViewController = segue.destination as! ToDoListViewController
        toDoListViewController.list = toDoList[ListTableViewOutlet.indexPathForSelectedRow!.row]
    }


}

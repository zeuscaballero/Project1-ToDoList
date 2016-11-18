//
//  ToDoListViewController.swift
//  w4d2 - ToDoList - JesusCaballero
//
//  Created by zeus on 11/15/16.
//  Copyright © 2016 appzeus. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellID = "myTableCell"
    
    
    
    @IBOutlet weak var listTableViewOutlet: UITableView!
    @IBOutlet weak var newListTextField: UITextField!
    @IBAction func addNewListTapped(_ sender: Any) {
        
        let newItem = Item(title:newListTextField.text!, description: "")
        newListTextField.text = nil
        list.item.append(newItem)
        listTableViewOutlet.reloadData()
        
    }
    
    var list: ItemList!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID)!
        cell.textLabel?.text = list.item[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.item.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = list.title
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        listTableViewOutlet.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let itemDetailsViewController = segue.destination as! ItemDetailsViewController
        itemDetailsViewController.item = list.item[listTableViewOutlet.indexPathForSelectedRow!.row]
    }


}

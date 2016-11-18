//
//  ItemDetailsViewController.swift
//  w4d2 - ToDoList - JesusCaballero
//
//  Created by zeus on 11/17/16.
//  Copyright © 2016 appzeus. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    

    var item: Item!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        titleTextField.text = item.title
        descriptionTextField.text = item.description
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        item.title = titleTextField.text!
        item.description = descriptionTextField.text!
        
        super.viewWillDisappear(animated)
        
        /// TODO!!!!!!
        //update var item: Item! to reflect what was changed in the textfields
        // 2 lines of code
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

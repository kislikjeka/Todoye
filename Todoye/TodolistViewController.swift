//
//  ViewController.swift
//  Todoye
//
//  Created by Евгений Кисличенко on 29/07/2018.
//  Copyright © 2018 Евгений Кисличенко. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController{

    let itemArray = ["Find Mike", "Buy Eggs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: TableView Datasource methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }

    //MARK: tableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(itemArray[ indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let cell = tableView.cellForRow(at: indexPath){
            
            if cell.accessoryType == .none{
                
                cell.accessoryType = .checkmark
            } else {
                
                cell.accessoryType = .none
            }
        }
    }
}


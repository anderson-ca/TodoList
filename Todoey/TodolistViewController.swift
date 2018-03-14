//
//  ViewController.swift
//  Todoey
//
//  Created by Anderson Cardoso on 3/14/18.
//  Copyright © 2018 Anderson Cardoso. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {
    
    let itemsArray = ["buy car", "buy house", "buy some weed"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Table view Data source methods.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemsArray[indexPath.row]
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


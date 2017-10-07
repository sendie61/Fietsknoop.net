//
//  SecondViewController.swift
//  Tabbed
//
//  Created by Apple on 06/10/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var list = ["21", "34", "45", "23", "11", "34", "68"]
    
    @IBOutlet weak var myTableView: UITableView!

    @IBOutlet weak var input: UITextField!

    @IBAction func textFieldPrimaryActionTruggered(_ sender: UITextField) {
        enterKnoopPunt()
    }
    
    @IBAction func deleteRoute(_ sender: Any) {
        list.removeAll()
        myTableView.reloadData()
    }
    
    @IBAction func addItem(_ sender: Any){
        enterKnoopPunt()
    }
    
    private func enterKnoopPunt( ){
        if self.input.text != ""
        {
            list.append(input.text!)
            myTableView.reloadData()
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell" )
        cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }      
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


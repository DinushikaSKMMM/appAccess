 //
 //  ViewController.swift
 //  AppAPIAccess
 //
 //  Created by MDL on 6/12/18.
 //  Copyright © 2018 fit. All rights reserved.
 //
 
 import UIKit
 import Alamofire
 
 class ViewController: UIViewController{
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        <#code#>
    //    }
    
    @IBOutlet weak var table: UITableView!
    // var dataSourceArray = User
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //APIManager.shared.fecthUserFromAPI()
        APIManager.shared.getPerticulerUser()
        //table.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numbersOfSection(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return 10
    }
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    ////        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as UserCell
    ////        cell.name.text = dataSourceArray[indexPath.row].name!
    ////        cell.country.text = dataSourceArray[indexPath.row].country!
    ////        cell.sqouse.text = dataSourceArray[indexPath.row].sqouse1
    //        //cell.name.text = dataSourceArray[indexPath.row].name
    //
    //
    //
    ////     ??   return cell
    //        return true
    //    }
    
 }


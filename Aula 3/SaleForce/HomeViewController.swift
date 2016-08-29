//
//  HomeViewController.swift
//  SaleForce
//
//  Created by Douglas Queiroz on 8/6/16.
//  Copyright © 2016 Douglas Queiroz. All rights reserved.
//

import UIKit
import PKHUD

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellIdentify = "identify_cell"
    let estados = ["Pernambuco",
                   "Paraiba",
                   "Bahia",
                   "Sergipe",
                   "Alagoas",
                   "Paraiba",
                   "Bahia",
                   "Sergipe",
                   "Alagoas",
                   "Paraiba",
                   "Bahia",
                   "Sergipe",
                   "Alagoas",
                   "Paraiba",
                   "Bahia",
                   "Sergipe",
                   "Alagoas",
                   "Paraiba",
                   "Bahia",
                   "Sergipe",
                   "Alagoas"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentify)
    }
    
    override func viewDidAppear(animated: Bool) {
        HUD.show(.Progress)
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            sleep(3)
            HUD.hide()
        } )
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return estados.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentify)!
        cell.textLabel?.text = estados[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Clicou na posição \(indexPath.row)")
    }
    
    @IBAction func btnMapAction(sender: AnyObject) {
        
        
        self.navigationController?.pushViewController(FormViewController(), animated: true)
    }
}

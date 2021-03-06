//
//  PoneysTableViewController.swift
//  PoneyManager
//
//  Created by ESTRACH Quentin on 15/05/2017.
//  Copyright © 2017 ESTRACH Quentin. All rights reserved.
//

import UIKit



class PoneyCell: UITableViewCell{

    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var lab: UILabel!

}

class PoneysTableViewController: UITableViewController {
    var poneyContainer = PoneyContainer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let notCenter = NotificationCenter.default
        notCenter.addObserver(forName: Notification.Name("modelUpdated"), object: nil, queue: nil) { (note) in
            self.tableView.reloadData()
        }
        poneyContainer.addPoney(Poney:Poney(name:"kek", level: 1)!)
        poneyContainer.addPoney(Poney:Poney(name:"osf", level: 2)!)
        poneyContainer.addPoney(Poney:Poney(name:"osf1", level: 3)!)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return poneyContainer.PoneyList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : PoneyCell = tableView.dequeueReusableCell(withIdentifier: "poneyCell", for: indexPath) as! PoneyCell
       
        //Configure the cell...
        cell.name.text = poneyContainer.PoneyList[indexPath.row].name;
        let kek = poneyContainer.PoneyList[indexPath.row].level;
        cell.lab.text = "\(kek)"
        return cell
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        tableView.reloadData()
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showForm"{
            guard let destination = segue.destination as? ViewController else { return }
            let poneyContainer = self.poneyContainer
            destination.poneyContainer = poneyContainer
            print("kek")
        }
        else if segue.identifier == "showDetails"{
              print("osf")
        }
    }
    

}

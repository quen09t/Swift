//
//  ViewController.swift
//  PetitPonaay
//
//  Created by Developer on 20/03/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var poneyContainer: PoneyContainer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions
    
    @IBAction func SavePoney(_ sender: UIButton) {
        guard let PoneyContainer = poneyContainer else { fatalError("no PoneyList")}
        guard let LevelString = Prix.text else {
            print("No level set")
            return
        }
        
        guard let LevelInt = Int(LevelString) else {
            return
        }
        
        guard let Name = Name.text else {
            print("This is not an americana song")
            return
        }
        
        
        let poney = Poney(name: Name, level: LevelInt)
        
        PoneyContainer.addPoney(Poney: poney!)
        
        PoneyList.text = "Poneys";
        PoneyList.text = PoneyContainer.getList()
        PoneyContainer.printPoneys()
        
        dismiss(animated: true, completion: nil)
        
        
    }
    @IBOutlet weak var Prix: UITextField!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var PoneyList: UITextView!
    
}


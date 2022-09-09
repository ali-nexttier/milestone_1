//
//  ViewController.swift
//  milestone1_test_nexttier
//
//  Created by ali on 9/9/22.
//

import UIKit




var messages: [String] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.register(UINib(nibName: "myMessageCellTableViewCell", bundle: nil), forCellReuseIdentifier: "msgCell")
        let cell = messageTable.dequeueReusableCell(withIdentifier: "msgCell", for: indexPath)

        
        cell.textLabel?.text = messages[indexPath.row]
        
        return cell
        
    }
    
    
    
    
    @IBOutlet weak var messageTable: UITableView!
    @IBOutlet weak var msgSendTextField: UITextField!
    @IBOutlet weak var sendMsgButton: UIButton!
    
    @IBAction func sendClickedAction(_ sender: Any) {
        print("send\(String(describing: msgSendTextField.text))")
        if msgSendTextField.text != "" {
            messages.append(msgSendTextField!.text ?? "")
            msgSendTextField.text = ""
            //an optiona value be careful
            self.messageTable.reloadData()
            
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTable.delegate = self
        messageTable.dataSource = self
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    


}


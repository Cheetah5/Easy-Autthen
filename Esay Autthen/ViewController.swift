//
//  ViewController.swift
//  Esay Autthen
//
//  Created by Student03 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    //Implicit
    var strUser: String?
    var strPassWord: String?
    
    
    
    //สร้าง Object View
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var messageLable: UILabel!
    
    
    //สร้าง Method for Button Action
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextField
        strUser = userTextField.text
        strPassWord = passWordTextField.text
        
        //Show User & Pass on Console
        print("User ==> \(strUser!)")
        print("PassWord ==> \(strPassWord!)")
    
        
        //Find Count String
        let intUser = strUser?.characters.count
        let intPassWord = strPassWord?.characters.count
        print("intUser ==> \(intUser!)")
        print("intPassWord ==> \(intPassWord!)")
        
        //Call checkSpace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassWord!) {
            print("No Space")
            showMessage(strMessage: "")
        }   else {
            print("Have Space")
            showMessage(strMessage: "Please Fill Every Blank")
        }

        
    
    }   //Login Button

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   //Main Method
    
    func showMessage(strMessage: String) -> Void {
       messageLable.text = strMessage
    }
    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            //Have Space
            result = false
        }
        return result
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   //End didReceive Method


}


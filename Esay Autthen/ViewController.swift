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
    let dicUser = ["Newly": "1234", "Doramon": "5678", "Nobita": "1234"]
    
    
    
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
        
            //No Space
            print("No Space")
            showMessage(strMessage: "")
            checkUserAndPassWord(strUser: strUser!, strPassWord: strPassWord!)
            
        }   else {
            
            //Have Space
            print("Have Space")
            showMessage(strMessage: "Please Fill in the Blank")
        }
    
    }   //Login Button

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   //Main Method
    
    func checkUserAndPassWord(strUser: String, strPassWord: String) -> Void {
        
        //Check User
        if let testUser = dicUser[strUser] {
            print("testUser ==> \(testUser)")
           //Password True
            if strPassWord == testUser {
                showMessage(strMessage: "Welcome to SNRU")
            } else{
            
              //Password False
                showMessage(strMessage: "Plase Try Again")
            
            }
          
        }
        
        
        else {
            print("testUser nil")
            showMessage(strMessage: "No" + strUser + "in my Database")
    
        }
        
       
    }
    
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
   

}   //Main Class


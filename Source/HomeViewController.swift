//
//  HomeViewController.swift
//  ChatModule
//
//  Created by Apple on 27/06/22.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func GoAction(_ sender: UIButton) {
        print("go press")
        CreateUserOnFireBase("akash@test.com", password: "122344") { Success, message in
            if Success{
                print("------------success")
            }else{
                print("------------error")
            }
        }
    }
    func CreateUserOnFireBase(_ email: String, password: String, completion: @escaping (_ Success: Bool, _ message: String) -> Void){
        Auth.auth().createUser(withEmail: email, password: password, completion: { (authResult, error) in
            if error != nil {
                completion(false, "Error creating account")
            } else {
                guard let firebaseUID = authResult?.user.uid else{
                    completion(false, "authResult?.user.uid not created")
                    return
                }
                print(firebaseUID)
                print("Successfully created account")

            }
        })
    }

}

//
//  Login.swift
//  ChatModule
//
//  Created by Apple on 22/06/22.
//

import Foundation
import FirebaseCore
import FirebaseAuth


public class Login{
   
    public init(){}
    
    public func printLog(){
        print("In PrintLog")
    }
    
    public func signInToFirebase(with email: String,and password: String, onCompletion:@escaping ((Bool)->())) {
        Auth.auth().signIn(withEmail: email, password: password, completion: { (authResult, error) in
            if error != nil {
                onCompletion(false)
            } else {
                guard let firebaseUID = authResult?.user.uid else{
                    onCompletion(false)
                    return
                }

                if let usr = authResult?.user {
                    Auth.auth().updateCurrentUser(usr) { (err) in
                        if err == nil{
                            onCompletion(true)
                        }
                    }
                }
            }
        })
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

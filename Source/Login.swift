//
//  Login.swift
//  ChatModule
//
//  Created by Apple on 22/06/22.
//

import Foundation


public class Login{
   
    public init(){}
    
    public func printLog(){
        print("In PrintLog")
    }
    
//    public func signInToFirebase(with email: String,and password: String, onCompletion:@escaping ((Bool)->())) {
////        let keychain = KeychainSwift()
//        Auth.auth().signIn(withEmail: email, password: password, completion: { (authResult, error) in
//
//            if error != nil {
//
//                onCompletion(false)
//            } else {
//                guard let firebaseUID = authResult?.user.uid else{
//                    onCompletion(false)
//                    return
//                }
//                if Preferences.token == ""
//                {
////                    keychain.set(firebaseUID, forKey: "firebaseUID")
//                }
//                else
//                {
////                    keychain.set(firebaseUID, forKey: "firebaseUIDTemp")
//                }
//
////                onCompletion(true)
//
//                if let usr = authResult?.user {
//                    Auth.auth().updateCurrentUser(usr) { (err) in
//                        if err == nil{
//                            onCompletion(true)
//                        }
//                    }
//                }
//            }
//        })
//    }

}

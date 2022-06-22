//
//  ViewController.swift
//  ChatModule
//
//  Created by akash on 06/22/2022.
//  Copyright (c) 2022 akash. All rights reserved.
//

import UIKit
import ChatModule

class ViewController: UIViewController {
    
    let chat = Login()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chat.printLog()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


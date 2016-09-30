//
//  ViewController.swift
//  Singleton
//
//  Created by Estefanía Gil Vaquero on 30/9/16.
//  Copyright © 2016 Symbel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Inst1 and inst2 are using the same instance, so they both increment the same counter
        let inst1 = MySingleton.sharedInstance
        inst1.incrementCounter()
        print(inst1.counter)
        
        let inst2 = MySingleton.sharedInstance
        inst2.incrementCounter()
        print(inst2.counter)
        print(inst1.counter)
        
        //By creating a new instance of the class calling the default constructor, inst3 is not using the sharedInstance constructor.
        //Once we make MySingleton default constructor private, we can no longer create a new instance
        
//        let inst3 = MySingleton()
//        inst3.incrementCounter()
//        print(inst3.counter)
        
    }

   


}


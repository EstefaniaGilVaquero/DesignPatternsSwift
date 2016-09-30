aouto//
//  MySingleton.swift
//  Singleton
//
//  Created by Estefanía Gil Vaquero on 30/9/16.
//  Copyright © 2016 Symbel. All rights reserved.
//

import Foundation

//I'm creating a singleton pattern with a static member, that garrantees that just one instance is created.
//Even if some threads are trying to inicialize the singleton at the same time, this pattern is Thread safe, 
//because inicialization is automaticly wrapped in a dispatch_once block

class MySingleton{
    
    //Static variable member
    static let sharedInstance = MySingleton()
    
    
    
    var counter = 0
    
    func incrementCounter(){
        counter += 1
    }
    
    //To avoid the default constructor beeing called from other classes, we make it private
    private init() {}

    
}
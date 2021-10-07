//
//  ViewController.swift
//  sandboxIOSPodProject
//
//  Created by lionel jones on 10/6/21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //project to demonstrate using Pods
        
        //working with realm
        let realm = try!Realm();
        
        //this will give us our realm file path for when you are view data in Realm Studio
        print(Realm.Configuration.defaultConfiguration.fileURL as Any);
        
        //declare an instance of our Cat Class
        
        /*
        let myCat = Cat();
        myCat.name = "Rick James Bitch!!";
        myCat.gender = "Male";
        myCat.color = "Black as Hell";
        
        //write your object to realm store
        try!realm.write {
            realm.add(myCat)
        }
        
         */
        //to open the file, make sure you have realm studio open, open terminal, type open <path you copy from terminal window>
        
        //to browse our realm objects
        let results = realm.objects(Cat.self);
        print(results[0].name!);
        
        //loop through your objects in your realm store
        for cat in results {
            print(cat.name!)
        }
        
        
        //to filter results
        let results2 = realm.objects(Cat.self).filter("name = 'Rick James Bitch!!'");
        print(results2.count);
        
        
    }


}


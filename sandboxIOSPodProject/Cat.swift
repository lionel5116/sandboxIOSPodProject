//
//  Cat.swift
//  sandboxIOSPodProject
//
//  Created by lionel jones on 10/6/21.
//

import Foundation
import RealmSwift

class Cat:Object {
    //to save these to realm, add @objc dynamic
    @objc dynamic  var name: String?
    @objc dynamic  var color: String?
    @objc dynamic  var gender: String?
}

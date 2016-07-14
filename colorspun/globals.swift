//
//  globals.swift
//  colorspun
//
//  Created by David Park on 6/9/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import Foundation

class Main {
    var selectedSprite = "Spaceship"
    init(selectedSprite: NSMutableString) {
        self.selectedSprite = selectedSprite as NSMutableString as String
    }
}

var mainInstance = Main(selectedSprite: "Spaceship")

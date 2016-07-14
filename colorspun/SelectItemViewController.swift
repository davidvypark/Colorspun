//
//  SelectItemViewController.swift
//  colorspun
//
//  Created by David Park on 6/9/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class SelectItemViewController: UIViewController {
    
    @IBOutlet weak var topLeftEarth: UIButton!
    @IBOutlet weak var topRightSaturn: UIButton!
    @IBOutlet weak var bottomLeftSpaceship: UIButton!
    @IBOutlet weak var buttomRightAstronaut: UIButton!
    
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    @IBAction func selectTopLeftEarth() {
        
        mainInstance.selectedSprite = "Earth"
        //Choose Earth
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func selectTopRightSaturn() {
        
        //Choose Saturn
        mainInstance.selectedSprite = "Saturn"
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func selectBottomLeftSpaceship() {
        
        //Choose Spaceship
        mainInstance.selectedSprite = "Spaceship"
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    
    @IBAction func selectBottomRightAstronaut() {
        
        //Choose Astronaut
        mainInstance.selectedSprite = "astronaut-256"
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    let items = [
        "Earth" ,
        "Saturn",
        "Spaceship",
        "Astronaut",]
    
    
    
    
    
    
}
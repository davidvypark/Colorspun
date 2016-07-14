//
//  GameScene.swift
//  colorspun
//
//  Created by David Park on 6/9/16.
//  Copyright (c) 2016 David Park. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {

        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello Space World!"
        myLabel.fontSize = 35
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        myLabel.zPosition = 50;

        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:mainInstance.selectedSprite)
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let randomTime = Double(1 + arc4random_uniform(101))/20.0
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:randomTime)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

    
    
}

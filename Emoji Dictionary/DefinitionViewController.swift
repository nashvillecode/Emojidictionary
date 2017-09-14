//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jordan Lejcar on 9/14/17.
//  Copyright © 2017 Jordan Lejcar. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
   
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
        definitionLabel.text = "Smiling Face with Sunglasses"
        }
        if emoji == "😨" {
            definitionLabel.text = "Fearful Face"
        }
        if emoji == "💩" {
            definitionLabel.text = "Pile of Poop"
        }
        if emoji == "😄" {
            definitionLabel.text = "Grinning Face with Squinting Face"
        }
        if emoji == "👹" {
            definitionLabel.text = "Ogre"
        }
        if emoji == "👻" {
            definitionLabel.text = "Ghost"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}

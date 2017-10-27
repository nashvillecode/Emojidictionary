//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jordan Lejcar on 9/13/17.
//  Copyright © 2017 Jordan Lejcar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArry()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell ()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! DefinitionViewController
        defvc.emoji = sender as! Emoji
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.catergory = "Smiley"
        emoji1.definition = "A smiley face with Sun Glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😨"
        emoji2.birthYear = 2005
        emoji2.catergory = "Smiley"
        emoji2.definition = "Fearful Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2011
        emoji3.catergory = "Poop"
        emoji3.definition = "Pile of Poop"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👸"
        emoji4.birthYear = 2009
        emoji4.catergory = "Princess"
        emoji4.definition = "A Princess"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐍"
        emoji5.birthYear = 2014
        emoji5.catergory = "Reptile"
        emoji5.definition = "Snake"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🦎"
        emoji6.birthYear = 2010
        emoji6.catergory = "Reptile"
        emoji6.definition = "Lizard"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}


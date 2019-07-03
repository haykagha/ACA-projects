//
//  EmojiTableViewCont.swift
//  emojiDictionary
//
//  Created by Vahan's MBP on 6/23/19.
//  Copyright © 2019 Vahan's MBP. All rights reserved.
//

import Foundation

import UIKit


class EmojiTableViewController: UITableViewController {
    
    var emojiArray: [[Emoji]] = [
        [Emoji(symbol: "🍏", name: "Grinning Face",
               description: "A typical smiley face.", usage: "happiness"),
         Emoji(symbol: "🍇", name: "Confused Face",
               description: "A confused, puzzled face.", usage: "unsure what to think displeasure"),
         Emoji(symbol: "🍓", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
         Emoji(symbol: "🍋", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge", usage: "person of authority")],
        [Emoji(symbol: "⚽️", name: "Turtle", description:
            "A cute turtle.", usage: "Something slow"),
         Emoji(symbol: "🏀", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
         Emoji(symbol: "🏈", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti")],
        [Emoji(symbol: "❤️", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
         Emoji(symbol: "🧡", name: "Tent", description: "A small tent.", usage: "camping"),
         Emoji(symbol: "💙", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
         Emoji(symbol: "💗", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness")],
        [Emoji(symbol: "🇦🇲", name: "Armenia's Flag", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
         Emoji(symbol: "🇧🇪", name: "Aria's Flag", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
         Emoji(symbol: "🇧🇷", name: "Armia's Flag", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
         Emoji(symbol: "🇲🇼", name: "Ania's Flag", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
         Emoji(symbol: "🇲🇩", name: "enia's Flag", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
         Emoji(symbol: "🇧🇪", name: "ckered Flag", description: "A black-and-white checkered flag.", usage: "completion")]]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emoji = emojiArray[indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        cell.update(with: emoji)
        cell.showsReorderControl = true
        return cell
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return emojiArray.count
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        if (fromIndexPath.section == to.section ){
            let movedEmoji = emojiArray[fromIndexPath.section].remove(at: fromIndexPath.row)
            emojiArray[to.section].insert(movedEmoji, at: to.row)
        }
    }
    
    // MARK: 2) Vonc anes vor cel@ nshvi
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    override func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
        if sourceIndexPath.section == proposedDestinationIndexPath.section {
            return proposedDestinationIndexPath
        } else {
            return sourceIndexPath
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        switch section {
        case 0: return "FRUITS"
        case 1: return "BALL"
        case 2: return "HEART"
        default: return "FLAG"
        }
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    
    @IBAction func editButton(_ sender: Any) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, commit
        editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath:
        IndexPath) {
        if editingStyle == .delete {
            emojiArray[indexPath.section].remove(at: indexPath.row)
              tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        if segue.identifier == "EditEmoji" {
            let indexPath = tableView.indexPathForSelectedRow!
            let emoji = emojiArray[indexPath.section][indexPath.row]
            let navController = segue.destination as!
            UINavigationController
            let addEditEmojiTableViewController = navController.topViewController as! AddEditEmojiTableViewController
            addEditEmojiTableViewController.emoji = emoji
        }
    }
    
    // MARK: 1) Es inch tuyn funkciya-a? Xia senc ashxatum> inchen grum mej@?
    @IBAction func unwindToEmojiTableView(unwindSegue: UIStoryboardSegue) {
        
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        navigationItem.title = "Emoji Dictionary"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    
    
    
    
}


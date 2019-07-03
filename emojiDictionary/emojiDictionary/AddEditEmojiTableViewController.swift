//
//  AddEditEmojiTableViewController.swift
//  emojiDictionary
//
//  Created by Vahan's MBP on 7/2/19.
//  Copyright © 2019 Vahan's MBP. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {

   
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    @IBOutlet weak var symbolTextField: UITextField!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    @IBOutlet weak var usageTextField: UITextField!
    var emoji: Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
        }
        
//        updateSaveButtonState()

    }
    
    
    
    func updateSaveButtonState() {
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    

}

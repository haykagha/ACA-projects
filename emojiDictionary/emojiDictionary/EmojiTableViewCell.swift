//
//  EmojiTableViewCell.swift
//  emojiDictionary
//
//  Created by Vahan's MBP on 6/28/19.
//  Copyright © 2019 Vahan's MBP. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var symbolLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }
    
    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    

    
    
    

}

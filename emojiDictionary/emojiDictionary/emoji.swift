//
//  emoji.swift
//  emojiDictionary
//
//  Created by Vahan's MBP on 6/21/19.
//  Copyright © 2019 Vahan's MBP. All rights reserved.
//

import Foundation
import UIKit

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String

    
    init(symbol: String, name: String, description: String,
         usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }

}


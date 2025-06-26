//
//  Item.swift
//  BeimanFederados
//
//  Created by Juan López Marín on 26/6/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

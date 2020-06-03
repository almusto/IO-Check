//
//  ClassColor.swift
//  IO Check
//
//  Created by sandro on 6/3/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation
import SwiftUI


enum ClassColor: String {
    case deathKnight = "Death Knight",
    demonHunter = "Demon Hunter",
    druid = "Druid",
    hunter = "Hunter",
    mage = "Mage",
    monk = "Monk",
    paladin = "Paladin",
    priest = "Priest",
    rogue = "Rogue",
    shaman = "Shaman",
    warlock = "Warlock",
    warrior = "Warrior"
    
    var color: Color {
        switch self {
        case .deathKnight:
            return Color(red: 196/255, green: 31/255, blue: 59/255)
        case .demonHunter:
            return Color(red: 163/255, green: 48/255, blue: 201/255)
        case .druid:
            return Color(red: 255/255, green: 125/255, blue: 10/255)
        case .hunter:
            return Color(red: 169/255, green: 210/255, blue: 113/255)
        case .mage:
            return Color(red: 64/255, green: 199/255, blue: 235/255)
        case .monk:
            return Color(red: 0/255, green: 255/255, blue: 150/255)
        case .paladin:
            return Color(red: 245/255, green: 140/255, blue: 186/255)
        case .priest:
            return Color(red: 255/255, green: 255/255, blue: 255/255)
        case .rogue:
            return Color(red: 255/255, green: 245/255, blue: 105/255)
        case .shaman:
            return Color(red: 0/255, green: 112/255, blue: 222/255)
        case .warlock:
            return Color(red: 135/255, green: 135/255, blue: 237/255)
        case .warrior:
            return Color(red: 199/255, green: 156/255, blue: 110/255)
        }
    }
}

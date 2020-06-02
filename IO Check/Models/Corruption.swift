//
//  Corruption.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//

/*
 "corruption": {
     "added": 126,
     "resisted": 90,
     "total": 36,
     "cloakRank": 15,
     "spells": [
         {
             "id": 318480,
             "name": "Void Ritual",
             "icon": "spell_shadow_shadesofdarkness",
             "school": 5,
             "rank": null
         },
         {
             "id": 315546,
             "name": "Expedient",
             "icon": "ability_mage_netherwindpresence",
             "school": 0,
             "rank": null
         },
 */

import Foundation


struct Corruption: Codable {
    let total: Int
    let cloakRank: Int
    let spells: Spell
    
}



struct Spell: Codable {
    let id: Int
    let name: String
    let school: Int
    let rank: Int
}

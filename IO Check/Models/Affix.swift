//
//  Affix.swift
//  IO Check
//
//  Created by sandro on 6/4/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation

/*
 "affixes": [
     {
         "id": 10,
         "name": "Fortified",
         "description": "Non-boss enemies have 20% more health and inflict up to 30% increased damage.",
         "wowhead_url": "https://wowhead.com/affix=10"
     },
 */
struct Affix: Codable {
    let id: Int
    let name: String
    let description: String
    let wowhead_url: String
    
}

//
//  Gear.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//


/*
 
 "gear": {
     "item_level_equipped": 477,
     "item_level_total": 0,
     "artifact_traits": 94.0840619516289,
     "corruption":
     "items":
 
 */
import Foundation


struct Gear: Codable {
    let item_level_equipped: Int
    let artifact_traits: Int
    let corruption: Corruption
    let items: [Item]
}

//
//  Character.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation
import SwiftUI

/*
 {
    "name": "Luigisama",
    "race": "Blood Elf",
    "class": "Warrior",
    "active_spec_name": "Arms",
    "active_spec_role": "DPS",
    "gender": "female",
    "faction": "horde",
    "achievement_points": 17890,
    "honorable_kills": 0,
    "thumbnail_url": "https://render-us.worldofwarcraft.com/character/area-52/47/165361967-avatar.jpg?alt=wow/static/images/2d/avatar/10-1.jpg",
    "region": "us",
    "realm": "Area 52",
    "profile_url": "https://raider.io/characters/us/area-52/Luigisama",
    "profile_banner": "hordebanner18",
    "mythic_plus_scores_by_season": [
    ],
    "gear": {
     "mythic_plus_ranks": {
         "overall": {
             "world": 478,
             "region": 127,
             "realm": 19
         },
         "class": {
             "world": 72,
             "region": 16,
             "realm": 3
         },
 
 "guild": {
     "name": "Dinosaur Cowboys",
     "realm": "Area 52"
 }
 
 "mythic_plus_best_runs": [
     {
         "dungeon": "Mechagon Junkyard",
         "short_name": "YARD",
         "mythic_level": 25,
         "completed_at": "2020-05-17T01:19:41.000Z",
         "clear_time_ms": 2025346,
         "num_keystone_upgrades": 1,
         "map_challenge_mode_id": 369,
         "score": 421.6,
         "affixes": [
             {
                 "id": 10,
                 "name": "Fortified",
                 "description": "Non-boss enemies have 20% more health and inflict up to 30% increased damage.",
                 "wowhead_url": "https://wowhead.com/affix=10"
             },

*/


struct Character: Codable {
    let name: String
    let race: String
    let `class`: String
    let faction: String
    var thumbnail_url: String
    let region: String
    let realm: String
    let guild: Guild?
    let mythic_plus_scores_by_season: [Season]
    let mythic_plus_best_runs: [Dungeon]
    //let mythic_plus_ranks: [String:Rank]
    
    
    var classColor: Color {
        return ClassColor(rawValue: `class`)?.color ?? .white
    }
    
    var isHorde: Bool {
        return faction.lowercased() == "horde" ? true : false
    }
}



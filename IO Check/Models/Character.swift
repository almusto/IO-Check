//
//  Character.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation

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

*/


struct Character: Codable {
    let name: String
    let race: String
    let `class`: String
    let faction: String
    let thumbnail_url: String
    let region: String
    let realm: String
    let mythic_plus_score_by_seaon: [Season]
    let mythic_plus_ranks: [String:Rank]
}

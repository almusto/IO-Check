//
//  Rank.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation


/*
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
struct RankType: Codable {
    let name: String
}

struct Rank: Codable {
    let world: Int
    let region: Int
    let realm: Int
}



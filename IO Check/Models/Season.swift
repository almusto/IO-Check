//
//  Season.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//

/* "mythic_plus_scores_by_season": [
    {
        "season": "season-bfa-4",
        "scores": {
            "all": 4611.7,
            "dps": 4444.5,
            "healer": 0,
            "tank": 4450.1,
            "spec_0": 3931.1,
            "spec_1": 4409.2,
            "spec_2": 4450.1,
            "spec_3": 0
        }
    }
],
 */

import Foundation

struct Season: Codable {
    let name: String
    let scores: Scores
}


struct Scores: Codable {
    let all: Double
    let dps: Double
    let healer: Double
    let tank: Double
    let spec_0: Double
    let spec_1: Double
    let spec_2: Double
    let spec_3: Double
}

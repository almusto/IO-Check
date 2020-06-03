//
//  Guild.swift
//  IO Check
//
//  Created by sandro on 6/3/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation

/*
 "guild": {
     "name": "Dinosaur Cowboys",
     "realm": "Area 52"
 }
 */


struct Guild: Codable {
    let name: String
    let realm: String
}

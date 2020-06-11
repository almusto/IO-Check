//
//  DungeonVM.swift
//  IO Check
//
//  Created by sandro on 6/9/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation
import UIKit



class DungeonVM: ObservableObject {
    
    private var webservice: Webservice
    @Published var character: Character?
    var name: String! = "luigisama"
    var season: String = "season-bfa-4"
    var region: String! = "us"
    var realm: String! = "area-52"
    var formatedDungeonNames: [String]!
    
    init() {
        self.webservice = Webservice()
        self.getDungeonNames()
    }
    
    
    func getDungeonNames() {
        formatedDungeonNames = [
            "Atal'dazar",
            "Freehold",
            "Kings'-Rest",
            "Mechagon-Junkyard",
            "Mechagon-Workshop",
            "Shrine-of-the-Storm",
            "Siege-of-Boralus",
            "Temple-of-Sethraliss",
            "The-MOTHERLODE!!",
            "The-Underrot",
            "Tol-Dagor",
            "Waycrest-Manor"
        ]
    }
    
    func getBestRunForEachDungeon() {
        let dungeons = formatedDungeonNames.map {
            webservice.getBestMythicRunByDungeon(season: season, region: region, dungeon: $0, affixes: "all") {  _ in
                
            }
        }
    }
    
    
    
    
    
}

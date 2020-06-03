//
//  CharacterVM.swift
//  IO Check
//
//  Created by sandro on 6/2/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation
import UIKit



class CharacterVM: ObservableObject {
    
    private var webservice: Webservice
    @Published var character: Character?
    var name: String! = "luigisama"
    var region: String! = "us"
    var realm: String! = "area-52"
    
    init() {
        self.webservice = Webservice()

    }
    
    
    func getCharacter() {
        webservice.getCharacterInfo(name: self.name, region: self.region, realm: self.realm) { char in
            if let char = char {
                self.character = char
            }
        }
    }
    
    func validateSeasons() -> Bool {
        return (self.character?.mythic_plus_scores_by_season.count) ?? 0 > 0 ? true : false

    }
    

}

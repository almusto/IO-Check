//
//  RunListView.swift
//  IO Check
//
//  Created by sandro on 6/4/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import SwiftUI

struct RunListView: View {
    
    @ObservedObject var characterVM: CharacterVM

    init(characterVM: CharacterVM) {
        self.characterVM = characterVM
    }
    
    var body: some View {
        let dungeons = self.characterVM.character?.mythic_plus_best_runs ?? [Dungeon]()

        return List {
             ForEach(dungeons.indices, id:\.self) { index in
                HStack() {
                    Text("\(dungeons[index].name)")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .alignmentGuide(.leading) {$0[HorizontalAlignment.leading]}
                    Text("+\(dungeons[index].mythic_level)")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                    Text("\(dungeons[index].clearTimeString)")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                    Text(String(format: "%.1f", dungeons[index].score))
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                }
                
                .listRowBackground((index % 2 == 0) ? Color(red: 53/255, green: 53/255, blue: 53/255) : Color(red: 43/255, green: 43/255, blue: 43/255))

            }
            
        }
    }
}

struct RunListView_Previews: PreviewProvider {
    static var previews: some View {
        
//        let dungeons = [
//            Dungeon(dungeon: "Mechagon Junkyard", mythic_level: 25, completed_at: "2020-05-17T01:19:41.000Z", clear_time_ms: 2025346, num_keystone_upgrades: 1, score: 421.6, affixes: [
//                Affix(id: 10, name: "Fortified", description: "", wowhead_url: "https://wowhead.com/affix=10"),
//                Affix(id: 11, name: "Bursting", description: "", wowhead_url: "https://wowhead.com/affix=11"),
//                Affix(id: 3, name: "Volcanic", description: "", wowhead_url: "https://wowhead.com/affix=3"),
//                Affix(id: 120, name: "Awakened", description: "", wowhead_url: "https://wowhead.com/affix=120")
//            ]),
//            Dungeon(dungeon: "Freehold", mythic_level: 24, completed_at: "2020-05-19T02:03:16.000Z", clear_time_ms: 1743858, num_keystone_upgrades: 1, score: 383.6, affixes: [
//                Affix(id: 10, name: "Fortified", description: "", wowhead_url: "https://wowhead.com/affix=10"),
//                Affix(id: 11, name: "Bursting", description: "", wowhead_url: "https://wowhead.com/affix=11"),
//                Affix(id: 3, name: "Volcanic", description: "", wowhead_url: "https://wowhead.com/affix=3"),
//                Affix(id: 120, name: "Awakened", description: "", wowhead_url: "https://wowhead.com/affix=120")
//            ])
//
//        ]
        
        return RunListView(characterVM: CharacterVM())

        
    }
}

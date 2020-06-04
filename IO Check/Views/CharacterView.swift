//
//  CharacterView.swift
//  IO Check
//
//  Created by sandro on 6/2/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import SwiftUI

struct CharacterView: View {
    
    @ObservedObject var characterVM = CharacterVM()
    
    init() {
        self.characterVM.getCharacter()
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            CharacterHeaderView(characterVM: self.characterVM)
            HStack {
                Text("Dungeon")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                Text("Level")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                Text("Time")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                Text("Score")
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .foregroundColor(.white)
            }.background(Color.black)
                .frame(maxWidth: .infinity)
            RunListView(characterVM: self.characterVM)
            
        }
    }
}




struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}

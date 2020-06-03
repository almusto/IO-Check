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
        
        VStack {
        CharacterHeaderView(character: self.characterVM.character ?? Character(name: "", race: "", class: "", faction: "", thumbnail_url: "", region: "", realm: "", guild: Guild(name: "", realm: "")))
            Spacer()
        }
    }
}


struct CharacterHeaderView: View {
    
    let character: Character?
    
    init(character: Character) {
        self.character = character
    }
    
    var body: some View {
        
        HStack(alignment: .top) {
            VStack(alignment: .center) {
                ImageView(urlString: self.character?.thumbnail_url)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(40)
                    .padding(.top)
                Text(self.character?.name ?? "")
                    .foregroundColor(.red)
                    .font(.title)
                Text(String(format: "<%@>", self.character?.guild?.name ?? ""))
                    .foregroundColor(.white)
                    .padding(.leading)
                HStack {
                    Text(self.character?.race ?? "")
                        .foregroundColor(.red)
                    Text(self.character?.class ?? "")
                        .foregroundColor(self.character?.classColor ?? .white)
                }.padding(.leading)
            }.padding(.bottom)
            
            Text("IO SCORE")
            Spacer()

        }.background(Color.gray)
        

    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}

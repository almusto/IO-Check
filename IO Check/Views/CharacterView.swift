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
            CharacterHeaderView(characterVM: self.characterVM)
            Spacer()
        }
    }
}


struct CharacterHeaderView: View {
    
    @ObservedObject var characterVM: CharacterVM
    
    init(characterVM: CharacterVM) {
        self.characterVM = characterVM
    }
    
    var body: some View {
        

            VStack(alignment: .center) {
                HStack(alignment: .top) {
                    ImageView(urlString: self.characterVM.character?.thumbnail_url)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(40)
                        .padding()
                    VStack(alignment: .center) {
                        Text(self.characterVM.validateSeasons() ? self.characterVM.character?.mythic_plus_scores_by_season[0].seasonName ?? "" : "")
                                .padding()
                        .foregroundColor(.white)

                        Text(self.characterVM.validateSeasons() ? String(format: "%.0f" , self.characterVM.character?.mythic_plus_scores_by_season[0].scores.all ?? 0) : "")
                            .foregroundColor(.white)
                    }.padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .some(200))

                Text(self.characterVM.character?.name ?? "")
                    .foregroundColor(self.characterVM.character?.isHorde ?? true ? .red : .blue)
                    .font(.title).bold()
                Text(String(format: "<%@>", self.characterVM.character?.guild?.name ?? ""))
                    .foregroundColor(.white)
                    .padding(.leading)
                HStack {
                    Text(self.characterVM.character?.race ?? "")
                        .foregroundColor(self.characterVM.character?.isHorde ?? true ? .red : .blue)
                    Text(self.characterVM.character?.class ?? "")
                        .foregroundColor(self.characterVM.character?.classColor ?? .white)
                }.padding(.leading)
            }.padding()
                .background(Color(red: 53/255, green: 53/255, blue: 53/255))
            .frame(maxWidth: .infinity, maxHeight: .some(200))

    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}

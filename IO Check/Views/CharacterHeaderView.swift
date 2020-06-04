//
//  CharacterHeaderView.swift
//  IO Check
//
//  Created by sandro on 6/4/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation
import SwiftUI

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
                .frame(maxWidth: .infinity, maxHeight: 112)

                Text(self.characterVM.character?.name ?? "")
                    .foregroundColor(self.characterVM.character?.isHorde ?? true ? .red : .blue)
                    .font(.title).bold()
                Text(String(format: "<%@>", self.characterVM.character?.guild?.name ?? ""))
                    .foregroundColor(.white)
                HStack {
                    Text(self.characterVM.character?.race ?? "")
                        .foregroundColor(self.characterVM.character?.isHorde ?? true ? .red : .blue)
                        .padding(.bottom)
                    Text(self.characterVM.character?.class ?? "")
                        .foregroundColor(self.characterVM.character?.classColor ?? .white)
                        .padding(.bottom)
                }
            }
                .background(Color(red: 79/255, green: 75/255, blue: 73/255))
                .frame(maxWidth: .infinity, maxHeight: (215))
                .border(self.characterVM.character?.isHorde ?? true ? Color.red : Color.blue)

    }
}



struct CharacterHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterHeaderView(characterVM: CharacterVM())
    }
}

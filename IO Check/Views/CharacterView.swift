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
       return VStack {
        Text(self.characterVM.character?.class ?? "")
        ImageView(urlString: self.characterVM.character?.thumbnail_url)
            .aspectRatio(contentMode: .fit)

        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}

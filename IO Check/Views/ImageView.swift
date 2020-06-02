//
//  ImageView.swift
//  IO Check
//
//  Created by sandro on 6/2/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation
import SwiftUI

struct ImageView: View {
    
    @ObservedObject var loader: ImageLoader
    static var defaultImage = UIImage(named: "not-found")
    
    init(urlString: String?) {
        loader = ImageLoader(urlString: urlString)
    }

    var body: some View {
        Image(uiImage: loader.image ?? ImageView.defaultImage!)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(urlString: nil)
    }
}

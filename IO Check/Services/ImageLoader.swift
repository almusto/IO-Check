//
//  ImageLoader.swift
//  IO Check
//
//  Created by sandro on 6/2/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

class ImageLoader: ObservableObject {
    
    @Published var image: UIImage?
    private let urlString: String?


    init(urlString: String?) {
        self.urlString = urlString
        load()
    }
    

    func load() {
        guard let urlString = urlString else {
            return
        }
        guard let url = URL(string: urlString) else {
            return
        }
       
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            guard let image = UIImage(data: data) else {
                return
            }
            
            DispatchQueue.main.async {
                self.image = image
            }

        }.resume()
    }
    
}

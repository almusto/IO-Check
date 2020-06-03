//
//  Webservice.swift
//  IO Check
//
//  Created by sandro on 6/2/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation


class Webservice {
    let baseURLString: String = "https://raider.io/api/v1/"
    
}

//MARK: Character Calls

extension Webservice {
    
    func getCharacterInfo(name: String, region: String, realm: String, completion: @escaping (Character?) -> ()) {
        
        let urlString = baseURLString + "characters/profile"
        
        guard var urlComponents = URLComponents(string: urlString) else {
            DispatchQueue.main.async {
                completion(nil)
            }
            return
        }
        let urlItems: [URLQueryItem] = [
            URLQueryItem(name: "name", value: name),
            URLQueryItem(name: "region", value: region),
            URLQueryItem(name: "realm", value: realm),
            URLQueryItem(name: "fields", value: "guild,gear,mythic_plus_ranks,mythic_plus_scores_by_season:current")
        ]
        //mythic_plus_scores_by_season:current
        
        urlComponents.queryItems = urlItems
        
        
        guard let url = urlComponents.url else {
            DispatchQueue.main.async {
                completion(nil)
            }
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"

        
        URLSession.shared.dataTask(with: urlRequest) { data, reponse, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            //let jsonDict = try? JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]
            //let string = ""
            let character = try! JSONDecoder().decode(Character.self, from: data)
            DispatchQueue.main.async {
                completion(character)

            }
            

            
        }.resume()
        
        
    }
    
}

//
//  NetworkManager.swift
//  RecentNews
//
//  Created by Iurie Guzun on 2022-02-23.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    
                }
            }
        }
    }
}

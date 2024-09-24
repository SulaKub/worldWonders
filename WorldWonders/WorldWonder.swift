//
//  WorldWonder.swift
//  WorldWonders
//
//  Created by Sultan Kubentayev on 10/09/2024.
//

import Foundation
import SwiftyJSON

struct WorldWonder {
    var name = ""
    var author = ""
    var year = ""
    var flag = ""
    var picture = ""
    
    init (json:JSON) {
        if let item = json["name"].string{
            name = item
        }
        if let item = json["author"].string{
            author = item
        }
        if let item = json["year"].string{
            year = item
        }
        if let item = json["flag"].string{
            flag = item
        }
        if let item = json["picture"].string{
            picture = item
        }
    }
}

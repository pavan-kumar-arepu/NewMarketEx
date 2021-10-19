//
//  Model.swift
//  Market
//
//  Created by Mona on 10/18/21.
//

import Foundation

struct MarketsDetails: Codable {
    var Markets: [String: Model]
}
struct Model: Codable {

        var Label: String
        var Name: String
        var Price: Double
        var Volume_24h: Double
        var Timestamp: Int
    
}



//API example:
//{
//  "Markets" : [
//    {
//      "Label" : "ETH/(Fiat)",
//      "Name" : "Ethereum",
//      "Price" : 0.01948437,
//      "Volume_24h" : 28680.92498425,
//      "Timestamp" : 1461221820
//    },{
//      "Label" : "LTC/(Fiat)",
//      "Name" : "Litecoin",
//      "Price" : 0.01948437,
//      "Volume_24h" : 28680.92498425,
//      "Timestamp" : 1461221820
//   }
//  ]
//}

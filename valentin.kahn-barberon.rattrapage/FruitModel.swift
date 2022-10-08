//
//  FruitModel.swift
//  valentin.kahn-barberon.rattrapage
//
//  Created by Valentin Kahn-Barberon on 07/10/2022.
//

import Foundation

struct FruitModel: Decodable {
    
    let id: Int
    let name: String
    let family: String
    let genus: String
    let order: String

}

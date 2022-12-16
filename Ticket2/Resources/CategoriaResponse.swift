//
//  CategoriaResponse.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation

struct CategoriaResponse: Codable {
    let codigo: String
    let nombre: String
    
    enum CodingKeys: String, CodingKey {
        case codigo = "id"
        case nombre
    }
}


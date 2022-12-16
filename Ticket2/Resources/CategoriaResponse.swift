//
//  CategoriaResponse.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation

struct CategoriaResponse: Codable {
    let codigo: Int
    let nombre: String
    
    enum CodingKeys: String, CodingKey {
        case codigo = "id"
        case nombre
    }
}


struct EventoResponse: Codable {
    let codigo: String
    let categoriaID: Int
    let nombre, organizador, ubicacion, fecha, resumen: String

    enum CodingKeys: String, CodingKey {
        case codigo
        case categoriaID = "categoriaId"
        case nombre, organizador, ubicacion, fecha, resumen
    }
}


//
//  EventoEntity.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation

struct EventoEntity {
    let nombre: String
    let categoriaID: Int
    let organizador: String
    let ubicacion: String
    let fecha: String
    let resumen: String
    
    static func mostrar(_ eventos: [EventoResponse]) -> [EventoEntity]{
        eventos.map { EventoEntity(nombre: $0.nombre, categoriaID: $0.categoriaID, organizador: $0.organizador, ubicacion: $0.ubicacion, fecha: $0.fecha, resumen: $0.resumen)}
    }
}

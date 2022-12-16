//
//  ListaCategoria.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation

protocol ListaCategoriaIteractorProtocol{
    func fetchDatos(categoriaID: Int)
}

class ListaCategoriaIteractor {
    
    var presenter: ListaCategoriaPresenterInteractorProtocol?
    
    var api: EventosApiProtocol?
}

extension ListaCategoriaIteractor: ListaCategoriaIteractorProtocol{
    func fetchDatos(categoriaID: Int)  {
        api?.fetchEventos({ eventos, error in
            if let eventos = eventos {
                let eventosEntity = EventoEntity.mostrar(eventos)
                self.presenter?.montarEventos(eventos: eventosEntity)
            }
        }, categoriaID: categoriaID)
        
    }
}

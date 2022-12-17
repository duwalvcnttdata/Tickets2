//
//  ListaMisTicketsRouter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 17/12/22.
//

import Foundation

protocol ListaMisTicketsRouterProtocol{
    func presentarDetalle(evento: EventoEntity)
}

class ListaMisTicketsRouter{
    var view: ListaMisTicketsViewController?
    var presenter: ListaMisTicketsPresenterRouterProtocol?
}

extension ListaMisTicketsRouter: ListaMisTicketsRouterProtocol{
    func presentarDetalle(evento: EventoEntity){
        print("llegue")
    }
}

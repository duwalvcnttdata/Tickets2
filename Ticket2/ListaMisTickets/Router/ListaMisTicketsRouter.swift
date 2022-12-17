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
    
    weak var view: ListaMisTicketsViewController?
    
    weak var presenter: ListaMisTicketsPresenterRouterProtocol?
    
    init(view: ListaMisTicketsViewController? = nil, presenter: ListaMisTicketsPresenterRouterProtocol? = nil) {
        self.view = view
        self.presenter = presenter
    }
}

extension ListaMisTicketsRouter: ListaMisTicketsRouterProtocol{
    func presentarDetalle(evento: EventoEntity){
        print("llegue")
    }
}

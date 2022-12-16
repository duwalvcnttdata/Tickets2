//
//  ListaCategoriaRouter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation
import UIKit


protocol ListaCategoriaRouterProtocol{
    func presentarEventoDetalle(evento: EventoEntity)
}

class ListaCategoriaRouter{
    var view: UIViewController?
    var presenter: ListaCategoriaPresenterRouterProtocol?
}

extension ListaCategoriaRouter: ListaCategoriaRouterProtocol{
    
    func presentarEventoDetalle(evento: EventoEntity){
        view?.navigationController?.pushViewController(EventoDetalleConfigurator.mostrarViewController(evento: evento), animated: true)
    }
    
}

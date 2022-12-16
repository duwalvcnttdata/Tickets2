//
//  EventoDetallePresenter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation

protocol EventoDetallePresenterViewProtocol{
    
}

protocol EventoDetallePresenterRouterProtocol{
    
}

class EventoDetallePresenter{
    var view: EventoDetalleViewControllerProtocol?
    var router: EventoDetalleRouterProtocol?
}

extension EventoDetallePresenter: EventoDetallePresenterViewProtocol{
    
}

extension EventoDetallePresenter: EventoDetallePresenterRouterProtocol{
    
}

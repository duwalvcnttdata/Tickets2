//
//  EventoDetalleRouter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation
import UIKit

protocol EventoDetalleRouterProtocol{
    
}

class EventoDetalleRouter{
    var view: UIViewController?
    var presenter: EventoDetallePresenterRouterProtocol?
}

extension EventoDetalleRouter: EventoDetalleRouterProtocol{
    
}

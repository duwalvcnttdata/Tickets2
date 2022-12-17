//
//  EventoDetalleRouter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation
import UIKit

protocol EventoDetalleRouterProtocol{
    func presentarVistaRoot()
}

class EventoDetalleRouter{
    var view: UIViewController?
    var presenter: EventoDetallePresenterRouterProtocol?
}

extension EventoDetalleRouter: EventoDetalleRouterProtocol{
    func presentarVistaRoot(){
        view?.navigationController?.popToRootViewController(animated: true)
    }
}

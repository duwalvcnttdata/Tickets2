//
//  CategoriasRouter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation
import UIKit

protocol CategoriasRouterProtocol {
    func presentarListaCategoria()
}

class CategoriasRouter: CategoriasRouterProtocol{
    
    var view: UIViewController?
    var presenter: CategoriasPresenterRouterProtocol?
    
    func presentarListaCategoria(){
        print("presentarListaCategoria()")
        view?.navigationController?.pushViewController(ListaCategoriaConfigurator.mostrarViewController(), animated: true)
    }
}

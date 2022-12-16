//
//  CategoriasRouter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import Foundation
import UIKit

protocol CategoriasRouterProtocol {
    func presentarListaCategoria(categoria: CategoriaEntity)
}

class CategoriasRouter: CategoriasRouterProtocol{
    
    var view: UIViewController?
    var presenter: CategoriasPresenterRouterProtocol?
    
    func presentarListaCategoria(categoria: CategoriaEntity){
        print("presentarListaCategoria()")
        view?.navigationController?.pushViewController(ListaCategoriaConfigurator.mostrarViewController(categoria: categoria), animated: true)
    }
}

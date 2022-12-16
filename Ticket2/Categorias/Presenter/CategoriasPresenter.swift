//
//  CategoriaPresenter.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation

protocol CategoriasPresenterInteractorProtocol{
    func montarListado(categorias categoriasEntity: [CategoriaEntity])
}

protocol CategoriasPresenterRouterProtocol{
    func presentarListadoCategoria()
}

protocol CategoriasPresenterViewProtocol{
    func obtenerCategorias()
    func solicitaPresentarListaCategoria()
}

class CategoriasPresenter {
    var interactor: CategoriasInteractorProtocol?
    var view: CategoriasViewControllerProtocol?
    var router: CategoriasRouterProtocol?
}

extension CategoriasPresenter: CategoriasPresenterInteractorProtocol{
    func montarListado(categorias categoriasEntity: [CategoriaEntity]){
        view?.montarListado(categoriasEntity)
    }
}

extension CategoriasPresenter: CategoriasPresenterRouterProtocol{
    func presentarListadoCategoria(){
        router?.presentarListaCategoria()
    }
}

extension CategoriasPresenter: CategoriasPresenterViewProtocol{
    func obtenerCategorias(){
        interactor?.fetchDatos()
    }
    
    func solicitaPresentarListaCategoria(){
        presentarListadoCategoria()
    }
}

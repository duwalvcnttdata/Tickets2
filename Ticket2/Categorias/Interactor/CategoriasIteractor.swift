//
//  CategoriasIteractor.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation

protocol CategoriasInteractorProtocol{
    func fetchDatos()
}

class CategoriasInteractor: CategoriasInteractorProtocol{
    
    /// Viper
    var presenter: CategoriasPresenterInteractorProtocol?
    
    var api: CategoriasApiProtocol?
    
    func fetchDatos()  {
        api?.fetchCategorias({ categorias, error in
            if let categorias = categorias {
                let categoriasEntity = CategoriaEntity.mostrar(categorias)
                self.presenter?.montarListado(categorias: categoriasEntity)
            }
        })
        
    
    }
    
    
}

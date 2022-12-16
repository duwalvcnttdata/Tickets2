//
//  Networking.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation
import Alamofire

protocol CategoriasApiProtocol{
    func fetchCategorias(_ completion: @escaping([CategoriaResponse]?, String?) -> Void )

}

class CategoriasAPI: CategoriasApiProtocol {
    func fetchCategorias(_ completion: @escaping([CategoriaResponse]?, String?) -> Void ) {
        AF.request("http://localhost:3000/categorias").responseDecodable(of: [CategoriaResponse].self) { response in
            switch response.result {
            case .success(let categorias):
                completion(categorias, nil)
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }
    
}

protocol EventosApiProtocol{
    func fetchEventos(_ completion: @escaping([EventoResponse]?, String?) -> Void, categoriaID: Int)
}

class EventosAPI: EventosApiProtocol{
    
    func fetchEventos(_ completion: @escaping([EventoResponse]?, String?) -> Void, categoriaID: Int) {
        print("http://localhost:3000/categorias/\(categoriaID)/eventos")
        AF.request("http://localhost:3000/categorias/\(categoriaID)/eventos").responseDecodable(of: [EventoResponse].self) { response in
            switch response.result {
            case .success(let categorias):
                completion(categorias, nil)
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }
}

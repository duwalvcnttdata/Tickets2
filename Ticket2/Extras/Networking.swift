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
    
    func fetchPostEvento(_ completion: @escaping(EventoResponse?, String?) -> Void, evento: EventoEntity)
}

class EventosAPI: EventosApiProtocol{
    
    func fetchEventos(_ completion: @escaping([EventoResponse]?, String?) -> Void, categoriaID: Int) {
        AF.request("http://localhost:3000/categorias/\(categoriaID)/eventos").responseDecodable(of: [EventoResponse].self) { response in
            switch response.result {
            case .success(let categorias):
                completion(categorias, nil)
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }
    
    func fetchPostEvento(_ completion: @escaping(EventoResponse?, String?) -> Void, evento: EventoEntity) {
        AF.request("http://localhost:3000/ticketsUsuario", method: .post, parameters: evento, encoder: JSONParameterEncoder.default).responseDecodable(of: EventoResponse.self) { response in
            
            switch response.result {
            case .success(let categoria):
                completion(categoria, nil)
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }
}

protocol ListaMisTicketsApiProtocol{
    func fetchEventos(_ completion: @escaping([EventoResponse]?, String?) -> Void)
}

class ListaMisTicketsAPI: ListaMisTicketsApiProtocol{

    func fetchEventos(_ completion: @escaping([EventoResponse]?, String?) -> Void) {
        AF.request("http://localhost:3000/ticketsUsuario").responseDecodable(of: [EventoResponse].self) { response in
            switch response.result {
            case .success(let categorias):
                completion(categorias, nil)
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }
}

//
//  CategoriasController.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation
import UIKit

class CategoriasConfigurator{
    static func mostrarViewController() -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(withIdentifier: "categoriaStoryboardID") as? CategoriasViewController else {
            return CategoriasViewController()
        }
        let presenter = CategoriasPresenter()
        let interactor = CategoriasInteractor()
        let router = CategoriasRouter()
        
        view.presenter = presenter
        
        interactor.api = CategoriasAPI()
        interactor.presenter = presenter
        
        router.view = view
        router.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        
        
        return view
    }
}

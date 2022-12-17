//
//  ListaMisTicketsConfigurator.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 17/12/22.
//

import Foundation
import UIKit

class ListaMisTicketsConfigurator{
    static func mostrarViewController() -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(withIdentifier: "listaMisTicketsStoryboardID") as? ListaMisTicketsViewController else {
            return ListaMisTicketsViewController()
        }
        let presenter = ListaMisTicketsPresenter()
        let interactor = ListaMisTicketsInteractor()
        let router = ListaMisTicketsRouter()

        view.presenter = presenter

        interactor.api = ListaMisTicketsAPI()
        interactor.presenter = presenter

        router.view = view
        router.presenter = presenter

        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        
        
        return view
    }
}

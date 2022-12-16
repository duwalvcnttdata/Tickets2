import Foundation
import UIKit

class ListaCategoriaConfigurator{
    static func mostrarViewController(categoria: CategoriaEntity) -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(withIdentifier: "listaCategoriaStoryboardID") as? ListaCategoriaViewController else {
            return ListaCategoriaViewController()
        }
        let presenter = ListaCategoriaPresenter()
        let interactor = ListaCategoriaIteractor()
        let router = ListaCategoriaRouter()

        view.categoria = categoria
        view.presenter = presenter

        interactor.api = EventosAPI()
        interactor.presenter = presenter

        router.view = view
        router.presenter = presenter

        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        
        
        return view
    }
}


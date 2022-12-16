import Foundation
import UIKit

class ListaCategoriaConfigurator{
    static func mostrarViewController() -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(withIdentifier: "listaCategoriaStoryboardID") as? ListaCategoriaViewController else {
            return ListaCategoriaViewController()
        }
//        let presenter = CategoriasPresenter()
//        let interactor = CategoriasInteractor()
//        let router = CategoriasRouter()
//
//        view.presenter = presenter
//
//        interactor.api = CategoriasAPI()
//        interactor.presenter = presenter
//
//        router.view = view
//        router.presenter = presenter
//
//        presenter.interactor = interactor
//        presenter.router = router
//        presenter.view = view
        
        
        
        return view
    }
}


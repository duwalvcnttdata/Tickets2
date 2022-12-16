import Foundation
import UIKit

class EventoDetalleConfigurator{
    static func mostrarViewController(evento: EventoEntity) -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(withIdentifier: "eventoDetalleStoryboardID") as? EventoDetalleViewController else {
            return EventoDetalleViewController()
        }
        let presenter = EventoDetallePresenter()
        let router = EventoDetalleRouter()

        view.evento = evento
        view.presenter = presenter

        router.view = view
        router.presenter = presenter

        presenter.router = router
        presenter.view = view
        
        
        
        return view
    }
}


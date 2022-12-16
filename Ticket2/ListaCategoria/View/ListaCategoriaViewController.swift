//
//  ListaCategoriaViewController.swift
//  Ticket2
//
//  Created by Duwal Abel Varillas Castro on 15/12/22.
//

import UIKit

struct EventoEntity {
    let nombre: String
    let organizador: String
    let ubicacion: String
    let fecha: String
    let resumen: String
}

class ListaCategoriaViewController: UIViewController {
    
    var categoria: CategoriaEntity?
    var listaEventos: [EventoEntity] = [
        EventoEntity(nombre: "Wakanda Forever1", organizador: "Cineplanet1", ubicacion: "Av. Ejercito 1001", fecha: "28 - Oct - 00:01", resumen: "Resumen 1"),
        EventoEntity(nombre: "Wakanda Forever2", organizador: "Cineplanet2", ubicacion: "Av. Ejercito 1002", fecha: "28 - Oct - 00:02", resumen: "Resumen 2")
    ]

    @IBOutlet weak var eventosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension ListaCategoriaViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaEventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "celdaEventoCompradoIdentifier") as? EventoTableViewCell else {
            return EventoTableViewCell()
        }
        cell.evento = listaEventos[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("acciono la celda")
    }
}

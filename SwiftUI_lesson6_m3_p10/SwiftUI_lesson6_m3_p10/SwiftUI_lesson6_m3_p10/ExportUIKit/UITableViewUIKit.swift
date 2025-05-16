//
//  UITableViewUIKit.swift
//  SwiftUI_lesson6_m3_p10
//
//  Created by Toporusan on 15.05.2025.
//

import SwiftUI

struct UITableViewUIKit: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIView(context: Context) -> UITableView {
        {
            $0.delegate = context.coordinator
            $0.dataSource = context.coordinator
            $0.register(DataCell.self, forCellReuseIdentifier: DataCell.cellname)
            $0.tableFooterView = UIView()

            return $0
        }(UITableView())
    }

    func updateUIView(_ uiView: UITableView, context: Context) {
    }

    // MARK: Coordinator class

    final class Coordinator: NSObject, UITableViewDelegate, UITableViewDataSource {
        let data: [DataStructure] = [
            DataStructure(imageName: "Rectangle54", header: "Apple разрешила альтернативы Apple Pay в Европе. Ждем Mir Pay для Айфона в России?", mainText: "2 часа назад"),
            DataStructure(imageName: "Rectangle55", header: "Свежие подробности об Айфон 16: новая батарея с защитой от перегрева, крутой процессор и iOS 18 с ИИ", mainText: "3 часа назад"),
            DataStructure(imageName: "Rectangle56", header: "Правда ли, что Айфон 12 сняли с продажи из-за опасного излучения, которое вредит здоровью", mainText: "4 часа назад"),
            DataStructure(imageName: "Rectangle57", header: "Тим Кук рассказал, что думает про VR-очки Apple Vision Pro и как выгодно купить Айфон в кризис", mainText: "5 часа назад"),
            DataStructure(imageName: "Rectangle54", header: "Apple разрешила альтернативы Apple Pay в Европе. Ждем Mir Pay для Айфона в России?", mainText: "2 часа назад"),
            DataStructure(imageName: "Rectangle55", header: "Свежие подробности об Айфон 16: новая батарея с защитой от перегрева, крутой процессор и iOS 18 с ИИ", mainText: "3 часа назад"),
            DataStructure(imageName: "Rectangle56", header: "Правда ли, что Айфон 12 сняли с продажи из-за опасного излучения, которое вредит здоровью", mainText: "4 часа назад"),
            DataStructure(imageName: "Rectangle57", header: "Тим Кук рассказал, что думает про VR-очки Apple Vision Pro и как выгодно купить Айфон в кризис", mainText: "5 часа назад"),
        ]

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DataCell.cellname, for: indexPath) as? DataCell else {
                return UITableViewCell()
            }

            let item = data[indexPath.row]
            cell.configCell(data: item)
            return cell
        }
    }
}

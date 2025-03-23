//
//  ViewController.swift
//  lesson_6_m2_p10
//
//  Created by Toporusan on 23.03.2025.
//

import UIKit

class ViewController: UIViewController {

    // 1 массив данных
    // 2 таблица
    // 3 data source - > protocol под который подписываем класс с таблицей
    // 4 реализуем протокол
    //      4.1. указываем сколько ячеек , берем их из массива данных  1
    //      4.2. настроим конкретную  ячейку
    //      4.3. создать кастомную ячейку
    
    
    var dataArray: [DataStruct] = DataStruct.dataArray()
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(DataCell.self, forCellReuseIdentifier: "cell")
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
    }
    

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DataCell else {
            return UITableViewCell()
        }

        cell.selectionStyle = .none
        let data = dataArray[indexPath.row]
        cell.configCell(data: data)
        
        return cell
    }
    
}

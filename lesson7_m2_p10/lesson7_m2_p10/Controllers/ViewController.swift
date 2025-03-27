//
//  ViewController.swift
//  lesson7_m2_p10
//
//  Created by Toporusan on 27.03.2025.
//

import UIKit

class ViewController: UIViewController {
    let phoneModels: [ProductStruct] = ProductStruct.getPruductDataSource()

    lazy var cellSize = {
        $0.itemSize = CGSize(width: (view.frame.width - 48) / 2, height: 301)
        $0.minimumLineSpacing = 20
        $0.minimumInteritemSpacing = 20
        $0.scrollDirection = .vertical
        $0.sectionInset = UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 14)
        return $0
    }(UICollectionViewFlowLayout())

    lazy var collection: UICollectionView = {
        $0.dataSource = self
        $0.delegate = self
        $0.layer.cornerRadius = 50
        $0.clipsToBounds = true
        $0.backgroundColor = .greyBackProj
        $0.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.reuseIdentifier)
        $0.translatesAutoresizingMaskIntoConstraints = false

        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: cellSize))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collection)

        constraints()
    }

    func constraints() {
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension ViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        phoneModels.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.reuseIdentifier, for: indexPath) as! CollectionCell

        let data = phoneModels[indexPath.item] // для коллекции item  для табл row
        cell.configure(with: data)
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = phoneModels[indexPath.item] // Получаем данные для выбранной ячейки
        let secondViewController = SecondViewController(data: data) // Создаем контроллер
        navigationController?.pushViewController(secondViewController, animated: true) // Переход
    }
}


//
//  ViewController.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 02.04.2025.
//

import UIKit

class ViewController: UIViewController {
    private let collectionData = CollectionSection.mockData()

    private lazy var collectionView = {
        $0.dataSource = self
        $0.register(StorryCell.self, forCellWithReuseIdentifier: StorryCell.reuseIdentifier)
        $0.register(FirstContentCell.self, forCellWithReuseIdentifier: FirstContentCell.reuseIdentifier)
        $0.register(SecondContentCell.self, forCellWithReuseIdentifier: SecondContentCell.reuseIdentifier)
        $0.register(ThirdContentCell.self, forCellWithReuseIdentifier: ThirdContentCell.reuseIdentifier)
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: createLayout()))

    func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { section, _ in
            
            switch section {
            case 0:
                return self.storySectionLayout()
            case 1:
                return self.firstContentCellSectionLayout()
            case 2:
                return self.secondContentCellSectionLayout()
            case 3:
                return self.trhirdContentCellSectionLayout()
            default:
                return self.firstContentCellSectionLayout()
            }
        }
    }

    private func storySectionLayout() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(90), heightDimension: .absolute(100))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 1)
        group.contentInsets = .init(top: 0, leading: 10, bottom: 0, trailing: 0)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = .init(top: 0, leading: 20, bottom: 50, trailing: 20)
        
        return section
    }

    private func firstContentCellSectionLayout() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),  heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8), heightDimension: .estimated(96))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 2)
        group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 20)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = .init(top: 0, leading: 30, bottom: 30, trailing: 30)
        
        
        return section
    }
    
    private func secondContentCellSectionLayout() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),  heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)

        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(323), heightDimension: .estimated(152))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 1)
        group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 20)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = .init(top: 0, leading: 30, bottom: 30, trailing: 30)
        

        return section
    }
    
    private func trhirdContentCellSectionLayout() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),  heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 23, trailing: 0)

        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(370), heightDimension: .estimated(216))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 1)
        group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 25)

        let section = NSCollectionLayoutSection(group: group)
        //section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = .init(top: 0, leading: 30, bottom: 50, trailing: 30)
        

        return section
    }
    
    

    // MARK: Это функция инициализации UI

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        
    }
}

// MARK: Это расширения для добавления ячеек в UICollectionView

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return collectionData.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData[section].items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionData[indexPath.section].items[indexPath.row]

        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StorryCell.reuseIdentifier, for: indexPath) as! StorryCell
            cell.configCell(for: item)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstContentCell.reuseIdentifier, for: indexPath)as! FirstContentCell
            cell.configCell(for: item)
            cell.backgroundColor = .grayProj
            cell.layer.cornerRadius = 15
            return cell
            
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondContentCell.reuseIdentifier, for: indexPath)as! SecondContentCell
            cell.configCell(for: item)
            //cell.backgroundColor = .grayProj
            cell.layer.cornerRadius = 15
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdContentCell.reuseIdentifier, for: indexPath)as! ThirdContentCell
            cell.configCell(for: item)
            cell.layer.cornerRadius = 15
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            cell.backgroundColor = .green
            return cell
        }
    }
}



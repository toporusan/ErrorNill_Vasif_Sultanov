//
//  StorryCell.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 03.04.2025.
//

import UIKit


class StorryCell: UICollectionViewCell {
    static let reuseIdentifier = "StorryCell"
    
    lazy var storyImageView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.frame = CGRect(x: 0, y: 0, width: bounds.width, height: 80)
        $0.layer.cornerRadius = 40
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 14, weight: .medium)
        $0.textAlignment = .center
        $0.frame = CGRect(x: 0, y: storyImageView.frame.maxY + 5, width: bounds.width, height: 20)
        return $0
    }(UILabel())
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(storyImageView)
        contentView.addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCell(for cell: CollectionItem) {
        self.nameLabel.text = cell.name
        self.storyImageView.image = UIImage(named: cell.image)
     }
    
    
}


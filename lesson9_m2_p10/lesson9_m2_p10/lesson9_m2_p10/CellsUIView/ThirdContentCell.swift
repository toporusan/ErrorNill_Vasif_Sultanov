//
//  FirstContentCell.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 06.04.2025.
//

import UIKit

class ThirdContentCell: UICollectionViewCell {
    static let reuseIdentifier = "ThirdContentCell"

    lazy var backgroundImg: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        return $0
    }(UIImageView())


    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(backgroundImg)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configCell(for cell: CollectionItem) {
        backgroundImg.image = UIImage(named: cell.image)
        
        setupConstraints()
    }
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImg.widthAnchor.constraint(equalToConstant: contentView.frame.width),
            backgroundImg.heightAnchor.constraint(equalToConstant: contentView.frame.height),
            backgroundImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0 ),
            backgroundImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            backgroundImg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
        ].compactMap { $0 }) // Убираем `nil` значения, если userName отсутствует
    }

    
}

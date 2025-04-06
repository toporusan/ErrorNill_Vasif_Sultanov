//
//  FirstContentCell.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 06.04.2025.
//

import UIKit

class SecondContentCell: UICollectionViewCell {
    static let reuseIdentifier = "SecondContentCell"

    lazy var backgroundImg: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        return $0
    }(UIImageView())

    lazy var header: UILabel = {
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .white
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var text: UILabel = {
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 14, weight: .medium)
        $0.textColor = .white
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(backgroundImg)
        contentView.addSubview(header)
        contentView.addSubview(text)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configCell(for cell: CollectionItem) {
        backgroundImg.image = UIImage(named: cell.image)
        header.text = cell.header
        text.text = cell.text
        setupConstraints()
    }
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImg.widthAnchor.constraint(equalToConstant: contentView.frame.width),
            backgroundImg.heightAnchor.constraint(equalToConstant: contentView.frame.height),
            backgroundImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0 ),
            backgroundImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            
            header.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            header.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            text.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 41),
            text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -21),

        ].compactMap { $0 }) // Убираем `nil` значения, если userName отсутствует
    }

    
}

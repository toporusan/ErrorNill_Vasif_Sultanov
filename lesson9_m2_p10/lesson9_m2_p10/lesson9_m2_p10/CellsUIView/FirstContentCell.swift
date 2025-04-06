//
//  FirstContentCell.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 06.04.2025.
//

import UIKit

class FirstContentCell: UICollectionViewCell {
    static let reuseIdentifier = "FirstContentCell"

    lazy var storyImageView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        return $0
    }(UIImageView())

    lazy var nameLabel: UILabel = {
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 14, weight: .medium)
        $0.textColor = .black
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
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
        nameLabel.text = cell.text
        storyImageView.image = UIImage(named: cell.image)
        setupConstraints()
    }
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            storyImageView.widthAnchor.constraint(equalToConstant: 61),
            storyImageView.heightAnchor.constraint(equalToConstant: 61),
            storyImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 13 ),
            storyImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            storyImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            //nameLabel.centerXAnchor.constraint(equalTo: storyImageView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 13 ),
            nameLabel.leadingAnchor.constraint(equalTo: storyImageView.trailingAnchor, constant: 12),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),

        ].compactMap { $0 }) // Убираем `nil` значения, если userName отсутствует
    }

    
}

//
//  FirstContentCell.swift
//  lesson9_m2_p10
//
//  Created by Toporusan on 06.04.2025.
//

import UIKit

class FirstContentCell: UITableViewCell {
    static let reuseIdentifier = "FirstContentCell"

    lazy var groupImg: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 4
        $0.backgroundColor = .lightGray
        return $0
    }(UIImageView())

    lazy var header: UILabel = {
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 16, weight: .medium)
        $0.textColor = .black
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var subtext: UILabel = {
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 14, weight: .medium)
        $0.textColor = .black
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .lightGrayProj
        contentView.addSubview(groupImg)
        contentView.addSubview(header)
        contentView.addSubview(subtext)
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configCell(for cell: CollectionItem) {
        header.text = cell.header
        //groupImg.image = UIImage(named: cell.image)
        subtext.text = cell.subtext
        
        setupConstraints()
    }
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([

            groupImg.widthAnchor.constraint(equalToConstant: 25),
            groupImg.heightAnchor.constraint(equalToConstant: 25),
            groupImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16 ),
            groupImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 14),
            //groupImg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            header.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16 ),
            header.leadingAnchor.constraint(equalTo: groupImg.trailingAnchor, constant: 10),
            header.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            subtext.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 2),
            subtext.leadingAnchor.constraint(equalTo: groupImg.trailingAnchor, constant: 10),
            subtext.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            subtext.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),

        ].compactMap { $0 }) // Убираем `nil` значения, если userName отсутствует
    }

    
}

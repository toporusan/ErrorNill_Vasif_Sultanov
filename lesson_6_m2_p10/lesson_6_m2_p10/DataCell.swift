//
//  DataCell.swift
//  lesson_6_m2_p10
//
//  Created by Toporusan on 23.03.2025.
//

import UIKit

class DataCell: UITableViewCell {
    private lazy var cellBackground: UIView = {
        $0.backgroundColor = .grayProj
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())

    private lazy var imgView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.image = UIImage(named: "image1")
        //$0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())

    private lazy var name: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 17, weight: .medium)
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

//        contentView.addSubview(cellBackground)
//        cellBackground.addSubview(imgView)
//        cellBackground.addSubview(name)

        contentView.addSubview(name)
        contentView.addSubview(imgView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configCell(data: DataStruct) {
        //imgView.image = UIImage(systemName: data.image)
        name.text = data.name
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
//            cellBackground.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            cellBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
//            cellBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20 ),

//            name.topAnchor.constraint(equalTo: cellBackground.topAnchor, constant: 10),
//            name.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 10),
//            name.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -10),
//
//            imgView.topAnchor.constraint(equalTo: name.topAnchor, constant: 50),
//            imgView.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 20),
//            imgView.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -20),
//            imgView.bottomAnchor.constraint(equalTo: cellBackground.bottomAnchor, constant: -50),

            name.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),

            imgView.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10),
            imgView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imgView.widthAnchor.constraint(equalToConstant: 100), // Фиксируем ширину
            imgView.heightAnchor.constraint(equalToConstant: 100), // Фиксируем высоту

            imgView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)

        ])
    }
}

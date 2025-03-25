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
        $0.layer.cornerRadius = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())

    private lazy var name: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .bold )
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var imgView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())

    private lazy var header: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .bold )
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    private lazy var subsHeader: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 12, weight: .thin )
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var mainText: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 16, weight: .medium )
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var nextBtn: UIButton = {
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium )
        $0.titleLabel?.textColor = .white
        $0.backgroundColor = .greenProj
        $0.layer.cornerRadius = 20
//        $0.action(for: .touchUpInside, forKey: nil)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    
//    lazy var redirectToAnotherViewController  = UIAction{ _ in
//        self.navigationController?.popViewController(animated: true)
//    }

    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubviews(cellBackground)
        cellBackground.addSubviews(name, imgView, header, subsHeader, mainText, nextBtn)

        

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configCell(data: DataStruct) {
        imgView.image = UIImage(named: data.image)
        name.text = data.name
        header.text = data.header
        subsHeader.text = data.subsHeader
        mainText.text = data.mainText
        nextBtn.setTitle(data.buttonText, for: .normal)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            cellBackground.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cellBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cellBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -25),

            name.topAnchor.constraint(equalTo: cellBackground.topAnchor, constant: 23),
            name.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 36),
            name.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -10),

            imgView.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 21),
            imgView.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 20),
            imgView.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -20),
            imgView.heightAnchor.constraint(equalToConstant: 191),
            
            header.topAnchor.constraint(equalTo: imgView.bottomAnchor,constant:  9),
            header.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 36),
            header.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -10),
            
            subsHeader.topAnchor.constraint(equalTo: header.bottomAnchor,constant:  3),
            subsHeader.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 36),
            subsHeader.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -10),
            
            
            mainText.topAnchor.constraint(equalTo: subsHeader.bottomAnchor, constant: 14),
            mainText.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 20),
            mainText.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -20),
            
            nextBtn.topAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 38),
            nextBtn.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 20),
            nextBtn.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -20),
            nextBtn.heightAnchor.constraint(equalToConstant: 50),
            nextBtn.bottomAnchor.constraint(equalTo: cellBackground.bottomAnchor, constant: -20)

        ])
    }
}



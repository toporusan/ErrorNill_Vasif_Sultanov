//
//  CollectionCell.swift
//  lesson7_m2_p10
//
//  Created by Toporusan on 27.03.2025.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    static let reuseIdentifier = "CollectionCell" // Идентификатор для ячейки

    
    lazy var iPhoneImg: UIImageView = {
        $0.frame.size = CGSize(width: contentView.frame.width, height: 200)
        $0.center.x = contentView.center.x
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        
        return $0
    }(UIImageView())
    
    lazy var price: UILabel = {
        $0.textColor = .redProj
        $0.font = .systemFont(ofSize: 14, weight: .bold )
        $0.numberOfLines = 0
        //$0.backgroundColor = .greenProj
        $0.frame = CGRect(x: contentView.frame.minX + 15, y: iPhoneImg.frame.maxY + 10, width: 100, height: 18)
        return $0
    }(UILabel())

    lazy var bookmarkImg: UIImageView = {
        $0.frame.size = CGSize(width: 16, height: 16)
        $0.frame.origin = CGPoint(x: contentView.frame.maxX - 30, y: iPhoneImg.frame.maxY + 10)
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        $0.tintColor = .darkBlueProj
        $0.center.x = price.center.x + 90
        
        return $0
    }(UIImageView())
    
    
    lazy var name: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14, weight: .bold )
        $0.numberOfLines = 0
        //$0.backgroundColor = .greenProj
        $0.frame = CGRect(x: contentView.frame.minX + 15, y: price.frame.maxY + 4, width: contentView.frame.width, height: 34)
        return $0
    }(UILabel())
    
    lazy var buyBtn: UIButton = {
        $0.titleLabel?.font = .systemFont(ofSize: 9, weight: .bold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .greenProj
        $0.setTitle("Купить", for: .normal)
        $0.contentHorizontalAlignment = .center
        $0.frame = CGRect(x: contentView.frame.minX + 6, y: contentView.frame.maxY - 25, width: contentView.frame.width - 12, height: 23)
        $0.layer.cornerRadius = 10
        return $0
    }(UIButton())
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        contentView.backgroundColor = .white
        
        contentView.addSubview(iPhoneImg)
        contentView.addSubview(bookmarkImg)
        contentView.addSubview(price)
        contentView.addSubview(name)
        contentView.addSubview(buyBtn)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(with viewModel: ProductStruct) {
        iPhoneImg.image = UIImage(named: viewModel.iPhoneImg)
        price.text = viewModel.price
        name.text = viewModel.model
        bookmarkImg.image = UIImage(named: viewModel.bookmarkImg)
    }
    
    
    
    
}

//
//  SecondViewController.swift
//  lesson7_m2_p10
//
//  Created by Toporusan on 27.03.2025.
//

import UIKit

class SecondViewController: UIViewController {
    var getData: ProductStruct
    
    lazy var iPhoneImg: UIImageView = {
        $0.frame.size = CGSize(width: view.frame.width, height: 400)
        $0.frame.origin = CGPoint(x: 0, y: view.safeAreaInsets.bottom + 100)
        $0.center.x = view.center.x
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var price: UILabel = {
        $0.textColor = .redProj
        $0.font = .systemFont(ofSize: 34, weight: .bold )
        $0.numberOfLines = 0
        $0.frame = CGRect(x: view.frame.minX + 20, y: iPhoneImg.frame.maxY + 22, width: 180, height: 42)
        return $0
    }(UILabel())


    lazy var model: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 21, weight: .light )
        $0.numberOfLines = 0
        //$0.backgroundColor = .greenProj
        $0.frame = CGRect(x: view.frame.minX + 20, y: price.frame.maxY + 4, width: view.frame.width, height: 23)
        return $0
    }(UILabel())
    
    lazy var addToFavorBtn: UIButton = {
        $0.titleLabel?.font = .systemFont(ofSize: 15, weight: .light)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .white
        $0.setTitle("В избранное", for: .normal)
        $0.contentHorizontalAlignment = .center
        $0.frame = CGRect(x: view.frame.minX + 20, y: model.frame.maxY + 18, width: (view.frame.width - 52)/2, height: 42)
        $0.layer.cornerRadius = 10
        return $0
    }(UIButton())
    
    lazy var buyBtn: UIButton = {
        $0.titleLabel?.font = .systemFont(ofSize: 15, weight: .light)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .greenProj
        $0.setTitle("Купить", for: .normal)
        $0.contentHorizontalAlignment = .center
        $0.frame = CGRect(x: addToFavorBtn.frame.maxX + 10, y: model.frame.maxY + 18, width: (view.frame.width - 52)/2, height: 42)
        $0.layer.cornerRadius = 10
        return $0
    }(UIButton())
    
    
    lazy var details: UILabel = {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 12, weight: .light )
        $0.numberOfLines = 0
        //$0.backgroundColor = .greenProj
        $0.frame = CGRect(x: view.frame.minX + 20, y: addToFavorBtn.frame.maxY - 10, width: view.frame.width, height: 200)
        return $0
    }(UILabel())
    
    
    
    
    init (data: ProductStruct) {
        self.getData = data
        super.init(nibName: nil, bundle: nil)
        
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.backgroundColor = .greyBackProj
        
        view.addSubview(iPhoneImg)
        view.addSubview(price)
        view.addSubview(model)
        view.addSubview(addToFavorBtn)
        view.addSubview(buyBtn)
        view.addSubview(details)
        
        configure(with: getData)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(with viewModel: ProductStruct) {
        iPhoneImg.image = UIImage(named: viewModel.iPhoneImg)
        price.text = viewModel.price
        model.text = viewModel.model
        details.text = viewModel.details
    }


}

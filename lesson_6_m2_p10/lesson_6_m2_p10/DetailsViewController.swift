//
//  DetailsViewController.swift
//  lesson_6_m2_p10
//
//  Created by Toporusan on 25.03.2025.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var data: DataStruct

    init(data: DataStruct) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    // UIViewController требует, чтобы ты вызвал инициализатор родителя (super.init(...)).
    // nibName: nil — означает, что мы не используем XIB-файл.
    // bundle: nil — означает, что контроллер загружается из основного бандла приложения.

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

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
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviews(imgView, name, subsHeader, mainText)
        configCell(data: data)
    }

    
    func configCell(data: DataStruct) {
        imgView.image = UIImage(named: data.image)
        name.text = data.name
        subsHeader.text = data.subsHeader
        mainText.text = data.mainText

        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([

            imgView.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
            imgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            imgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            imgView.heightAnchor.constraint(equalToConstant: 191),
            
            name.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 24),
            name.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),

            subsHeader.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 24),
            subsHeader.leadingAnchor.constraint(equalTo: name.trailingAnchor, constant: 100),
            subsHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            subsHeader.centerYAnchor.constraint(equalTo: name.centerYAnchor),
            
            mainText.topAnchor.constraint(equalTo: subsHeader.bottomAnchor, constant: 18),
            mainText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        
        ])
    }
    


}

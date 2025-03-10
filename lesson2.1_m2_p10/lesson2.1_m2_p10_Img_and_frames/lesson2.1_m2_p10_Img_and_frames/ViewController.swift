//
//  ViewController.swift
//  lesson2_m2_p10_Img_and_frames
//
//  Created by Toporusan on 10.03.2025.
//

import UIKit

class ViewController: UIViewController {
    lazy var frameWidth = Int(view.frame.width)
    lazy var frameLeftPadding = 30

    lazy var lable1 = textViewCreater(x: frameLeftPadding, y: 100,
                                      width: Int(view.frame.width) - (frameLeftPadding * 2), height: 50, color: .black, text: "AppName", fontWeight: .bold, fontSize: 30)
    lazy var img1: UIImageView = imageViewCreater(x: frameLeftPadding, y: Int(lable1.frame.maxY) + 28, width: Int(view.frame.width) - (frameLeftPadding * 2), height: 360,imageName: .girlInRed, contentMode: .scaleAspectFill, cornerRadius: 40)
    
    lazy var lable2 = textViewCreater(x:frameLeftPadding + 30 , y: (Int(img1.frame.minY) + 250),
                                      width: 150, height: 35, color: .white, text: "Имя Фамилия", fontWeight: .bold, fontSize: 20)
    
    lazy var img2: UIImageView = imageViewCreater(x: Int(lable2.frame.maxX) - 5, y: Int(img1.frame.minY) + 255, width: 30, height: 30,imageName: .medal, contentMode: .scaleAspectFill)
    
    lazy var lable3 = textViewCreater(x:frameLeftPadding + 30 , y: (Int(lable2.frame.maxY) - 10),
                                      width: 150, height: 35, color: .white, text: "25 лет", fontWeight: .regular, fontSize: 18)
    
    
    lazy var img3: UIImageView = imageViewCreater(x: frameLeftPadding, y: Int(img1.frame.maxY) + 30, width: 65, height: 65,imageName: .xbutton, contentMode: .scaleAspectFill)
    lazy var img4: UIImageView = imageViewCreater(x: Int(view.frame.width) - 93, y: Int(img1.frame.maxY) + 30, width: 65, height: 65,imageName: .heartBtn, contentMode: .scaleAspectFill)
    
    lazy var  button1 = buttonCreater(x: Int(img3.frame.maxX) + 33, y: Int(img1.frame.maxY) + 30, width: Int(img4.frame.minX - img3.frame.maxX) - 66, height: 60, text: "Написать", backgroundColor: .greenProj, fontSize: 16, cornerRadius: 25)
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(lable1, img1, lable2, img2, lable3, img3, img4, button1)
    }

    // Создание лейбла
    func textViewCreater(x: Int, y: Int,
                         width: Int, height: Int,
                         color: UIColor,
                         text: String = "text",
                         fontWeight: UIFont.Weight = .regular,
                         backgroundColor: UIColor? = .clear,
                         fontSize: Int = 16) -> UITextView {
        let textView: UITextView = UITextView()
        textView.frame = CGRect(x: x, y: y, width: width, height: height)
        textView.textColor = color
        textView.backgroundColor = backgroundColor
        textView.text = text
        textView.font = UIFont.systemFont(ofSize: CGFloat(fontSize), weight: fontWeight)

        return textView
    }

    // Создание кнопки

    func buttonCreater(x: Int, y: Int,
                       width: Int, height: Int,
                       text: String = "",
                       textColor: UIColor = .white,
                       backgroundColor: UIColor = .blueProj,
                       fontSize: CGFloat = 18,
                       fontWeight: UIFont.Weight = .regular,
                       cornerRadius: CGFloat = 0,
                       borderWidth: CGFloat = 0,
                       borderColor: UIColor = .clear) -> UIButton {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.setTitle(text, for: .normal)
        button.setTitleColor(textColor, for: .normal)

        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor

        return button
    }

    // Создание UITextField
    func textFieldCreater(x: Int, y: Int,
                          width: Int, height: Int,
                          placeholder: String = "",
                          cornerRadius: Int = 10,
                          backgroundColor: UIColor? = .clear,
                          isPassword: Bool = false,
                          offsetLeft: Int = 10) -> UITextField {
        let textField = UITextField()

        textField.frame = CGRect(x: x, y: y, width: width, height: height)
        textField.backgroundColor = backgroundColor
        textField.placeholder = placeholder
        textField.layer.cornerRadius = CGFloat(cornerRadius)
        textField.isSecureTextEntry = isPassword
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: offsetLeft, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: offsetLeft, height: 0))
        textField.rightViewMode = .always
        return textField
    }

    // Создание UIImageView
    func imageViewCreater(x: Int, y: Int,
                          width: Int, height: Int,
                          imageName: UIImage,
                          backgroundColor: UIColor? = .clear,
                          contentMode: UIView.ContentMode = .scaleAspectFit,
                          cornerRadius: Int = 0) -> UIImageView {
        let imageView = UIImageView()

        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        imageView.backgroundColor = backgroundColor
        imageView.image = imageName
        imageView.contentMode = contentMode
        imageView.layer.cornerRadius = CGFloat(cornerRadius)
        imageView.clipsToBounds = true

        return imageView
    }
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

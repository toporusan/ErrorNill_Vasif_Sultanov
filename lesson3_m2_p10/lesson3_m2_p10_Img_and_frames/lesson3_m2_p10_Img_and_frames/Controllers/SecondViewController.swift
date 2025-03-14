//
//  SecondViewController.swift
//  lesson3_m2_p10_Img_and_frames
//
//  Created by Toporusan on 13.03.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var search = UISearchController()
    
    lazy var mainLogoImg: UIImageView = imageViewCreater(x: 20, y: Int(view.frame.minY) + 131, width: 91, height: 35, imageName: .group1000004694)
    lazy var olhovskyKvTxt:UITextView = textViewCreater(x: 20, y: Int(mainLogoImg.frame.maxY) + 22, width: 320, height: 50, color: .white, text: "Ольховый квартал",fontWeight: .bold, backgroundColor: .clear, fontSize: 26)
    lazy var bannerImg = imageViewCreater(x: 14, y: Int(olhovskyKvTxt.frame.maxY), width: Int(view.frame.maxX) - 28, height: 300, imageName: .imageSectionNew1, cornerRadius: 20)
    
    lazy var priceTxt:UITextView = textViewCreater(x: 14, y: Int(bannerImg.frame.maxY) - 25, width: 200, height: 26, color: .white, text: "от 8 029 445 ₽",fontWeight: .bold, backgroundColor: .clear, fontSize: 15 )
    lazy var objectTxt:UITextView = textViewCreater(x: 14, y: Int(priceTxt.frame.maxY) - 5, width: Int(view.frame.width) - 30, height: 42, color: .white, text: "Москва, поселение Сосенское, деревня Столбово",fontWeight: .regular, backgroundColor: .clear, fontSize: 13)
    
    lazy var backBtn: UIButton = buttonCreater(x: 14, y: Int(view.frame.maxY) - 130, width: Int(view.frame.maxX) - 28, height: 60, text:"Назад", backgroundColor: .darkBlueProj, cornerRadius: 30, action: redirectToAnotherViewController)
    
    lazy var redirectToAnotherViewController  = UIAction{ _ in
        self.navigationController?.popViewController(animated: true)
    }

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
//        arrowBtn.addTarget(self, action: #selector (handleArrowBtn), for: .touchUpInside)
//        
//        lifeComplexImg.frame = CGRect(x: 8, y: Int(buyView.frame.maxY) + 20, width: Int(view.frame.width) - 10, height: 500)
        
        view.addSubviews2(mainLogoImg, olhovskyKvTxt,bannerImg,priceTxt,objectTxt, backBtn)
        

    }
    

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
    

    func buttonCreater(x: Int, y: Int,
                       width: Int, height: Int,
                       text: String = "",
                       textColor: UIColor = .white,
                       backgroundColor: UIColor? = .clear,
                       fontSize: CGFloat = 18,
                       image: UIImage? = nil,
                       fontWeight: UIFont.Weight = .regular,
                       cornerRadius: CGFloat = 0,
                       borderWidth: CGFloat = 0,
                       borderColor: UIColor? = .clear, 
                       action: UIAction? = nil,
                       tag: Int? = nil) -> UIButton {
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.setTitle(text, for: .normal)
        button.setTitleColor(textColor, for: .normal)
        button.setImage(image, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor?.cgColor
        
        if let tag = tag {
            button.tag = tag
        }
        
        if let action = action {
                button.addAction(action, for: .touchUpInside)
            }
        
        return button
    }
    
    

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
    
    

    
    
    


}


extension UIView {
    func addSubviews2(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

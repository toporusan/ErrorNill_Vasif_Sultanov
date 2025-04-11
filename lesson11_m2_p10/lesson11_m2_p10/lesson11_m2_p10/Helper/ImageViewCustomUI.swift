//
//  ImageViewCustomUI.swift
//  lesson11_m2_p10
//
//  Created by Toporusan on 10.04.2025.
//

import UIKit

class ImageViewCustomUI: UIImageView {
    
    init(image: String) {
        super.init(image: UIImage(named: image))
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill 
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

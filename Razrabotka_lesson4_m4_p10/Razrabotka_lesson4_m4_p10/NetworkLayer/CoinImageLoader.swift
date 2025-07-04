//
//  CoinImageLoader.swift
//  Razrabotka_lesson4_m4_p10
//
//  Created by Vasif Sultanov on 30/06/25.
//

import Foundation
import UIKit.UIImage

struct CoinImageLoader {
    
    
    func loadImage(imageURL: String, completion: @escaping (UIImage?) -> Void) {
            
            guard let url = URL(string: imageURL) else {
                print("Неверный URL")
                completion(nil)
                return
            }

            URLSession.shared.dataTask(with: url) { data, _, error in
                if let error = error {
                    print("Ошибка запроса: \(error.localizedDescription)")
                    completion(nil)
                    return
                }

                guard let data = data, let image = UIImage(data: data) else { // преобразование байтов изображения в объект изображения
                    print("Не удалось получить данные изображения")
                    completion(nil)
                    return
                }
                
                completion(image) // Возвращаем UIImage в главный поток
               
            }.resume()
        }
    
}



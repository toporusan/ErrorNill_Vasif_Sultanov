
import Foundation

struct ProductStruct {
    let iPhoneImg: String
    let model: String
    let price: String
    let details: String?
    let bookmarkImg: String

    static func getPruductDataSource() -> [ProductStruct] {
        [
            ProductStruct(
                iPhoneImg: "1",
                model: "Apple iPhone 14 Pro 256Gb Серебристый",
                price: "107 990 ₽",
                details: """
                Тип смартфон  
                ОС iOS 16  
                Тип корпуса классический  
                Конструкция водозащита  
                Материал стекло керамика нержавеющая сталь  
                SIM Nano Sim + eSIM  
                Кол-во SIM 1  
                Вес 240г  
                Размеры 160.7x77.6x7.85 мм
                """,
                bookmarkImg: "bookmark"
            ),
            ProductStruct(
                iPhoneImg: "2",
                model: "Apple iPhone 14 Pro 512Gb Золотой",
                price: "119 990 ₽",
                details: """
                Тип смартфон  
                ОС iOS 16  
                Тип корпуса классический  
                Конструкция водозащита  
                Материал стекло керамика алюминий  
                SIM Nano Sim + eSIM  
                Кол-во SIM 2  
                Вес 238г  
                Размеры 160.7x77.6x7.8 мм
                """,
                bookmarkImg: "bookmark"
            ),
            ProductStruct(
                iPhoneImg: "3",
                model: "Apple iPhone 14 128Gb Голубой",
                price: "62 990 ₽",
                details: """
                Тип смартфон  
                ОС iOS 16  
                Тип корпуса классический  
                Конструкция влагозащита  
                Материал стекло алюминий  
                SIM Nano Sim  
                Кол-во SIM 1  
                Вес 172г  
                Размеры 146.7x71.5x7.8 мм
                """,
                bookmarkImg: "bookmark"
            ),
            ProductStruct(
                iPhoneImg: "4",
                model: "Apple iPhone 14 512Gb Сияющая звезда",
                price: "119 990 ₽",
                details: """
                Тип смартфон  
                ОС iOS 16  
                Тип корпуса классический  
                Конструкция пыле- и влагозащита  
                Материал стекло керамика нержавеющая сталь  
                SIM Nano Sim + eSIM  
                Кол-во SIM 2  
                Вес 243г  
                Размеры 161.1x78.1x7.9 мм
                """,
                bookmarkImg: "bookmark"
            ),
            ProductStruct(
                iPhoneImg: "5",
                model: "Apple iPhone 14 Plus 256Gb Черный",
                price: "89 990 ₽",
                details: """
                Тип смартфон  
                ОС iOS 16  
                Тип корпуса классический  
                Конструкция водозащита  
                Материал стекло алюминий  
                SIM eSIM  
                Кол-во SIM 1  
                Вес 203г  
                Размеры 160.8x78.1x7.8 мм
                """,
                bookmarkImg: "bookmark"
            ),
            ProductStruct(
                iPhoneImg: "6",
                model: "Apple iPhone 14 Mini 128Gb Красный",
                price: "57 990 ₽",
                details: """
                Тип смартфон  
                ОС iOS 16  
                Тип корпуса классический  
                Конструкция влагозащита  
                Материал стекло алюминий  
                SIM Nano Sim + eSIM  
                Кол-во SIM 1  
                Вес 140г  
                Размеры 131.5x64.2x7.4 мм
                """,
                bookmarkImg: "bookmark"
            )
        ]

    }
}

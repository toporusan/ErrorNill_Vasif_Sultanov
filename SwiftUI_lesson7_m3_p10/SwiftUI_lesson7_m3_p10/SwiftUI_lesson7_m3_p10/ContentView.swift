//
//  ContentView.swift
//  SwiftUI_lesson7_m3_p10
//
//  Created by Toporusan on 15.05.2025.
//

import SwiftUI

struct ContentView: View {
    
    var coffeeArray: [Data] = [
        Data(coffeeImg: "1", coffeeType: "МОККО", coffeePrice: "150", coffeeSize: "350"),
        Data(coffeeImg: "2", coffeeType: "ЛАТТЕ", coffeePrice: "200", coffeeSize: "325"),
        Data(coffeeImg: "3", coffeeType: "КАПУЧИНО", coffeePrice: "200", coffeeSize: "150"),
        Data(coffeeImg: "4", coffeeType: "РАФ КЛАССИЧЕСКИЙ", coffeePrice: "300", coffeeSize: "250"),
        Data(coffeeImg: "2", coffeeType: "ГОЛДЕН МАКИАТО", coffeePrice: "429", coffeeSize: "300"),
        Data(coffeeImg: "1", coffeeType: "РАФ ВАНИЛА", coffeePrice: "500", coffeeSize: "350"),
    ]
    
    let columns = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 35) {
                ForEach(coffeeArray, id: \.self) { value in
                    CoffeeCell(data: value)
                }
            }
        }
    }

    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

#Preview {
    ContentView()
}

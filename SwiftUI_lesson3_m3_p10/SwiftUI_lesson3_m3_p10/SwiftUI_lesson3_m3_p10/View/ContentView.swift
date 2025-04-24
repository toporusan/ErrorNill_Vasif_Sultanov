import SwiftUI

struct ContentView: View {
    
    @StateObject var content = ContentViewModel()
    @State private var isDataLoaded = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Загружаем данные, когда они не пустые
                ForEach(content.data) { item in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.header)
                            .font(.headline)
                            .padding(.horizontal, 23)
                            .foregroundColor(.black)
                        Text(item.text)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.horizontal, 23)
                    }
                    .frame(width: 354, height: 142)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(20)
                    .onAppear {
                        if !content.data.isEmpty {
                                isDataLoaded = true
                            
                        }
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)

            // Кнопка "Обновить ленту"
            Button {
                if content.data.isEmpty {
                    content.fetchData()
                } else {
                    content.clearData()
                    isDataLoaded = false
                }
            } label: {
                Text("Оновить ленту")
                    .frame(width: 354, height: 60)
                    .foregroundStyle(.white)
                    .background(Color.black)
                    .cornerRadius(20)
            }
            .offset(y: isDataLoaded ? 180 : 0)
            
        }
    }
}

#Preview {
    ContentView()
}

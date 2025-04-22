import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    ImageCustom(image: .image2, width: 37, height: 37)
                        .padding(.leading, 30)
                    Spacer()
                    ImageCustom(image: .rectangle1, width: 55, height: 55)
                        .padding(.trailing, 30)
                }
                .padding(.bottom, 40)

                HStack {
                    Text("Hello User")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.leading, 30)
                    Spacer()
                }.padding(.bottom, 10)

                HStack {
                    Text("Find your specialist")
                        .font(.system(size: 32, weight: .bold))
                        .padding(.leading, 30)
                    Spacer()
                }.padding(.bottom, 30)
                
                HStack {
                    Vigets(image: .group2, color: ._71_A_5_D_7, text: "Place")
                        .cornerRadius(22)
                        .padding(.leading, 30)
                    Spacer()
                    Vigets(image: .group3, color: ._72_CCD_4, text: "Phone")
                        .cornerRadius(22)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    Spacer()
                    Vigets(image: .group4, color: .F_8_B_894, text: "User")
                        .cornerRadius(22)
                        .padding(.trailing, 30)
                }.padding(.bottom, 40)
                
                HStack {
                    Text("Top Doctor")
                        .font(.system(size: 32, weight: .bold))
                        .padding(.leading, 30)
                    Spacer()
                    Text("See all")
                        
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(._72_CCD_4)
                        .padding(.trailing, 30)
                    
                }.padding(.bottom, 10)
                
                MainContent().padding(.bottom, 30)
                MainContent().padding(.bottom, 30)
               
            }
            .frame(maxWidth: .infinity)
            
        }
    }
}

#Preview {
    ContentView()
}








//
//  MainPageView.swift
//  SwiftUI_lesson4_m3_p10
//
//  Created by Toporusan on 28.04.2025.
//

import SwiftUI

struct MainPageView: View {
    @EnvironmentObject var session: AppViewModel
    @Binding var path: [Page]
    
    var body: some View {
        
        VStack {
            Text("Приветствую")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(session.email)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()

            EnterButton(text: "Выйти"){
                session.logout()
                session.email = ""
                session.password = ""
                path.removeAll()
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.top, 100)
        .background(Color.black)
        
        
        

       
    }
}

#Preview {
    MainPageView(path: .constant([])).environmentObject(AppViewModel())
}

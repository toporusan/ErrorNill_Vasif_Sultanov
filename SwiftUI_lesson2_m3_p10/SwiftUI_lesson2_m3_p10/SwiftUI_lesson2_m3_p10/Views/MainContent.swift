//
//  D.swift
//  SwiftUI_lesson2_m3_p10
//
//  Created by Toporusan on 22.04.2025.
//

import SwiftUI

struct MainContent : View {
    var body: some View {
        HStack(spacing: 0){
            VStack{
                Image(.rectangle13)
                    .resizable()
                    .frame(maxWidth: 82, maxHeight: 82)
                    .padding(.top, 16)
                    .padding(.horizontal, 10)
                Spacer()
                
            }
    

            VStack{
                HStack{
                    Text("Top Doctor")
                        .font(.system(size: 20, weight: .bold))
                        .padding(.leading, 10)
                        .padding(.top, 26)
                    Spacer()
                }
                HStack{
                    Text("Lorem ipsum dolor sit amet")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.lightGrayProj)
                        .padding(.leading, 10)
                    Spacer()
                }
                
                HStack{
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 19, height: 19)
                        .foregroundColor(._72_CCD_4)
                        .padding(.leading, 10)
                    Text("10.40 am - 2.40 pm")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.lightGrayProj)
                        .padding(.leading, 8)
                    Spacer()
                }

                HStack{
                    Text("$10.50")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.lightGrayProj)
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Appointment")
                    }, label: {
                        Text("Appointment")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.white)
                            .frame(width: 126, height: 26)
                            .background(._72_CCD_4)
                            .cornerRadius(17)
                    }).padding(.trailing, 10)
                }
               

                Spacer()
                
            }

            
            Spacer()
            
        }
        .frame(width: 369, height: 145)
        .cornerRadius(20)
        
        
    }
}

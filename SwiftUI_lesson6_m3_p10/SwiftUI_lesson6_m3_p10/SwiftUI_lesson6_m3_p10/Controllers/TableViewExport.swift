//
//  TableViewExport.swift
//  SwiftUI_lesson6_m3_p10
//
//  Created by Toporusan on 15.05.2025.
//

import SwiftUI

struct TableViewExport: View {
    @Binding var path: [Page]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("НОВОСТИ").padding()
                .font(.system(size: 20, weight: .bold))
            UITableViewUIKit()
        }
        
        
    }
}

#Preview {
    TableViewExport(path: .constant([]))
}
